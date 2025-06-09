import 'package:get/get.dart';
import 'package:nextmind_mobile/domain/models/button_drawer/button_drawer.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class ButtonsDrawerRepository extends GetxController {
  static get to => Get.find<ButtonsDrawerRepository>();
  AsyncResult<List<ButtonDrawer>> fetchButtonsDrawerByUserType();
}
