import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/domain/dtos/credentials/credentials.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class AuthRepository extends GetxController {
  AsyncResult<User> registerWithEmail(Credentials credentials);
  AsyncResult<User> loginWithEmail(Credentials credentials);
  AsyncResult<User> loginWithGoogle();
  AsyncResult<Unit> logout();
}
