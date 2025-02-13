import 'package:firebase_auth/firebase_auth.dart';
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

  final Logger _logger = Logger();

  @override
  void onInit() {
    super.onInit();
    _firebaseUser.bindStream(_auth.authStateChanges());
    ever(_firebaseUser, (User? user) {
      userIsAuthenticated.value = user != null;
    });
    _logger.d("Auth Service Initialized");
  }

  static AuthService get to => Get.find<AuthService>();

  AsyncResult<User> newUserWithEmail(Credentials credentials) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
              email: credentials.email, password: credentials.password);
      _logger.d("Successfully created a new user with an email.");
      return Success(userCredential.user!);
    } catch (e) {
      _logger.d("Failed to create a new user with an email.");
      return Failure(AuthException(e.toString()));
    }
  }

  AsyncResult<User> loginUserWithEmail(Credentials credentials) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: credentials.email, password: credentials.password);
      _logger.d("User successfully logged in using an email.");
      return Success(userCredential.user!);
    } catch (e) {
      _logger.d("User login failed using an email.");
      return Failure(AuthException(e.toString()));
    }
  }

  AsyncResult<User> loginGoogleUser() async {
    try {
      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        return Failure(AuthException('Sign in aborted by user'));
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
      return Success(userCredential.user!);
    } catch (e) {
      _logger.d("User login failed using Google Authentication.");
      return Failure(AuthException(e.toString()));
    }
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
