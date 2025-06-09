import 'package:get/get.dart';

class BaseViewModel extends GetxController {
  static BaseViewModel get to => Get.find();
  var tabIndex = 0.obs;

  void changeTab(int index) {
    if (tabIndex.value == index) {
      // If reselecting the same tab, pop to first
      Get.nestedKey(index + 1)
          ?.currentState
          ?.popUntil((route) => route.isFirst);
    } else {
      tabIndex.value = index;
    }
  }
}
