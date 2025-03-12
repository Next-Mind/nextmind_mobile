import 'dart:convert';

import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nextmind_mobile/data/services/local_storage.dart';
import 'package:nextmind_mobile/domain/models/user/user.dart';
import 'package:result_dart/result_dart.dart';

const _userKey = '_userKey';

class AuthLocalStorage extends GetxService {
  final LocalStorage _localStorage = Get.find();
  final Logger _logger = Logger();

  static AuthLocalStorage get to => Get.find();

  AsyncResult<LoggedUser> getUser() {
    _logger.d("$runtimeType: Getting user from Local Storage");
    return _localStorage //
        .getData(_userKey)
        .map((json) => LoggedUser.fromJson(jsonDecode(json)))
        .onFailure((e) => _logger.e(
            '$runtimeType: Unable to retrieve user from LocalStorage ${e.toString()}'));
  }

  AsyncResult<LoggedUser> saveUser(LoggedUser user) {
    _logger.d("Saving user in Local Storage");
    return _localStorage //
        .saveData(_userKey, jsonEncode(user.toJson()))
        .pure(user);
  }

  AsyncResult<Unit> removeUser() {
    _logger.d("Deleting user from Local Storage");
    return _localStorage.removeData(_userKey);
  }
}
