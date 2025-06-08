import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/data/services/local_storage.dart';
import 'package:result_dart/result_dart.dart';

const _themeKey = '_themeKey';

class ThemeController extends GetxController {
  static ThemeController get to => Get.find();

  final LocalStorage _localStorage = LocalStorage.to;
  ThemeMode _themeMode = ThemeMode.system;
  ThemeMode get themeMode => _themeMode;
  final RxBool isDarkMode = false.obs;

  @override
  onInit() {
    super.onInit();
    getThemeMode();
  }

  AsyncResult<Unit> toggleThemeMode() async {
    try {
      final themeText = await _localStorage.getData(_themeKey).getOrThrow();
      final currentTheme = ThemeMode.values.firstWhere(
        (element) => element.name.toLowerCase() == themeText.toLowerCase(),
        orElse: () => ThemeMode.system,
      );
      final newThemeMode =
          currentTheme == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
      return await setThemeMode(newThemeMode);
    } catch (e) {
      final newThemeMode =
          _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
      return await setThemeMode(newThemeMode);
    }
  }

  AsyncResult<Unit> setThemeMode(ThemeMode themeMode) async {
    try {
      Get.changeThemeMode(themeMode);
      _themeMode = themeMode;
      isDarkMode.value = themeMode == ThemeMode.dark;
      update();
      _localStorage.saveData(_themeKey, themeMode.toString().split('.')[1]);
      return Success(unit);
    } on Exception catch (e) {
      return Failure(e);
    }
  }

  AsyncResult<Unit> getThemeMode() async {
    try {
      ThemeMode themeMode;
      String themeText = await _localStorage.getData(_themeKey).getOrThrow();
      themeMode =
          ThemeMode.values.firstWhere((element) => element.name == themeText);
      setThemeMode(themeMode);
      return Success(unit);
    } catch (e) {
      return Failure(Exception(e));
    }
  }
}
