import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:nextmind_mobile/data/services/auth/auth_local_storage.dart';
import 'package:nextmind_mobile/domain/dtos/signup_form/signup_form.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:logger/logger.dart';
import 'package:nextmind_mobile/domain/dtos/credentials/credentials.dart';
import 'package:nextmind_mobile/utils/exceptions/auth_exception.dart';
import 'package:result_dart/result_dart.dart';

class AuthService extends GetxService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
  final Rxn<User> _firebaseUser = Rxn<User>();
  var userIsAuthenticated = false.obs;
  Timer? _tokenRefreshTimer;

  User? get user => _firebaseUser.value;
  final Logger _logger = Logger();

  @override
  void onInit() {
    super.onInit();
    _firebaseUser.bindStream(_auth.authStateChanges());
    ever(_firebaseUser, (User? user) {
      userIsAuthenticated.value = user != null;
    });

    _scheduleTokenRefresh();

    _logger.d("Auth Service Initialized");
  }

  @override
  void onClose() {
    _tokenRefreshTimer?.cancel();
    _logger.d("Auth Service Closed");
    super.onClose();
  }

  static AuthService get to => Get.find<AuthService>();

  AsyncResult<String> newUserWithEmail(SignUpForm signUpFormInfos) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: signUpFormInfos.email,
        password: signUpFormInfos.password,
      );
      var newFirebaseUser = userCredential.user!;
      await newFirebaseUser.updateDisplayName(signUpFormInfos.name);
      _logger.d("Successfully created a new user with an email.");
      //sendEmailVerification(); //Preciso implementar isso com uma lógia melhor
      return Success(await newFirebaseUser.getIdToken() ?? '');
    } catch (e) {
      _logger.d("Failed to create a new user with an email.");
      return Failure(AuthException(e.toString()));
    }
  }

  AsyncResult<Unit> sendEmailVerification() async {
    try {
      await _auth.currentUser!.sendEmailVerification();
      _logger.d("Email verification sent successfully.");
      return Success(unit);
    } catch (e) {
      _logger.d("Failed to send email verification.");
      return Failure(AuthException(e.toString()));
    }
  }

  AsyncResult<Unit> sendPasswordResetEmail(String email) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      _logger.d("Password reset email sent successfully.");
      return Success(unit);
    } catch (e) {
      _logger.d("Failed to send password reset email.");
      return Failure(AuthException(e.toString()));
    }
  }

  AsyncResult<String> loginUserWithEmail(Credentials credentials) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: credentials.email, password: credentials.password);
      _logger.d("User successfully logged in using an email.");
      var remoteUser = userCredential.user!;
      return Success(await remoteUser.getIdToken() ?? '');
    } catch (e) {
      _logger.d("User login failed using an email.");
      return Failure(AuthException("loginFailed".tr));
    }
  }

  AsyncResult<String> loginGoogleUser() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return Failure(AuthException('sigInAborted'.tr));
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      _logger.d("User has successfully logged in with Google Authentication.");
      var remoteUser = userCredential.user!;

      return Success(await remoteUser.getIdToken() ?? '');
    } catch (e) {
      _logger.d("User login failed using Google Authentication.");
      return Failure(AuthException(e.toString()));
    }
  }

  AsyncResult<String> refreshToken() async {
    try {
      if (_auth.currentUser != null) {
        _logger.d("User token refreshed successfully.");
        return Success(await _auth.currentUser!.getIdToken() ?? '');
      } else {
        return Failure(AuthException("No user is currently logged in."));
      }
    } catch (e) {
      _logger.d("Failed to refresh user token.");
      return Failure(AuthException(e.toString()));
    }
  }

  AsyncResult<Unit> _refreshLoggedUserToken() async {
    final storage = Get.find<AuthLocalStorage>();

    final result = await storage.getUser();
    result.fold(
      (user) async {
        final tokenResult = await refreshToken();
        tokenResult.fold(
          (newToken) async {
            final updatedUser = user.copyWith(token: newToken);
            await storage.saveUser(updatedUser);
            _logger.d("User token successfully refreshed and saved.");
          },
          (e) => _logger.e("Failed to refresh user token: ${e.toString()}"),
        );
        return Success(unit);
      },
      (_) {
        _logger.d("No user found in Local Storage to refresh token.");
        return Failure(AuthException("No user found in Local Storage."));
      },
    );
    return Success(unit);
  }

  void _scheduleTokenRefresh() {
    _refreshLoggedUserToken();
    _tokenRefreshTimer = Timer.periodic(
      Duration(minutes: 50),
      (_) => _refreshLoggedUserToken(),
    );
  }

  AsyncResult<Unit> logout() async {
    try {
      await _auth.signOut();
      await _googleSignIn.signOut();
      _logger.d("User has sucessfully logged out from the application.");
      return Success(unit);
    } catch (e) {
      _logger.d("User logout failed.");
      return Failure(AuthException(e.toString()));
    }
  }
}
