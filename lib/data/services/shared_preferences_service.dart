import 'package:get/get.dart';
import 'package:nextmind_mobile/utils/exceptions/shared_preferences_exception.dart';
import 'package:result_dart/result_dart.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:logger/logger.dart';

class SharedPreferencesService extends GetxService {
  late SharedPreferences _prefs;
  final Logger _logger = Logger();

  AsyncResult<SharedPreferencesService> init() async {
    try {
      _prefs = await SharedPreferences.getInstance();
      _logger.i("SharedPreferences initialized", time: DateTime.now());
      return Success(this);
    } catch (e, s) {
      _logger.e("Failed to initialize SharedPreferences service.",
          time: DateTime.now());
      return Failure(SharedPreferencesException(e.toString(), s));
    }
  }

  AsyncResult<Unit> setString(String key, String value) async {
    try {
      await _prefs.setString(key, value);
      _logger.d("String saved - Key: $key, Value: $value");
      return Success(unit);
    } catch (e, s) {
      _logger.d("Failed to save string - Key: $key, Value: $value");
      return Failure(SharedPreferencesException(e.toString(), s));
    }
  }

  String? getString(String key) {
    return _prefs.getString(key);
  }

  AsyncResult<Unit> setInt(String key, int value) async {
    try {
      await _prefs.setInt(key, value);
      _logger.d("Integer saved - Key: $key, Value: $value");
      return Success(unit);
    } catch (e, s) {
      _logger.d("Failed to save integer - Key: $key, Value: $value");
      return Failure(SharedPreferencesException(e.toString(), s));
    }
  }

  int? getInt(String key) {
    return _prefs.getInt(key);
  }

  AsyncResult<Unit> setBool(String key, bool value) async {
    try {
      await _prefs.setBool(key, value);
      _logger.d("Boolean saved - Key: $key, Value: $value");
      return Success(unit);
    } catch (e, s) {
      _logger.d("Failed to save boolean - Key: $key, Value: $value");
      return Failure(SharedPreferencesException(e.toString(), s));
    }
  }

  bool? getBool(String key) {
    return _prefs.getBool(key);
  }

  AsyncResult<Unit> setDouble(String key, double value) async {
    try {
      await _prefs.setDouble(key, value);
      _logger.d("Double saved - Key: $key, Value: $value");
      return Success(unit);
    } catch (e, s) {
      _logger.d("Failed to save double - Key: $key, Value: $value");
      return Failure(SharedPreferencesException(e.toString(), s));
    }
  }

  double? getDouble(String key) {
    return _prefs.getDouble(key);
  }

  AsyncResult<Unit> removeKey(String key) async {
    try {
      await _prefs.remove(key);
      _logger.w("Key removed: $key");
      return Success(unit);
    } catch (e, s) {
      _logger.d("Failed to remove key - Key: $key");
      return Failure(SharedPreferencesException(e.toString(), s));
    }
  }

  AsyncResult<Unit> clearAll() async {
    try {
      await _prefs.clear();
      _logger.w("All data has been removed from SharedPreferences");
      return Success(unit);
    } catch (e, s) {
      _logger.d("Failed to clear all");
      return Failure(SharedPreferencesException(e.toString(), s));
    }
  }
}
