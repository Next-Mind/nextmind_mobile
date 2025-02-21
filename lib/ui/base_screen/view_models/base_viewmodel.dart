import 'package:get/get.dart';

class BaseViewModel {
  static BaseViewModel get to => Get.find();

  var currentIndex = 0.obs;

  void changeIndex(int newIndex) {
    currentIndex.value = newIndex;
  }
}
