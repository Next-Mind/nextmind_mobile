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

  AsyncResult<User> getUser() {
    _logger.d("Getting user from Local Storage");
    return _localStorage //
        .getData(_userKey)
        .map((json) => User.fromJson(jsonDecode(json)));
  }

  AsyncResult<User> saveUser(User user) {
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
