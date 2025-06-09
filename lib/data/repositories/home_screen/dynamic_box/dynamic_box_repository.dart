import 'package:get/get.dart';
import 'package:nextmind_mobile/domain/models/dynamic_box/dynamic_box.dart';
import 'package:result_dart/result_dart.dart';

abstract interface class DynamicBoxRepository extends GetxController {
  static DynamicBoxRepository get to => Get.find<DynamicBoxRepository>();

  AsyncResult<int> onHappinessButtonPressed(int index);

  AsyncResult<DynamicBox> getDynamicBoxContent();
}
