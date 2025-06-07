import 'package:get/get.dart';

class DynamicBoxViewmodel extends GetxController {
  static DynamicBoxViewmodel get to => Get.find<DynamicBoxViewmodel>();
  var dynamicBoxTitle = 'Como você está se sentindo hoje?'.obs;
}
