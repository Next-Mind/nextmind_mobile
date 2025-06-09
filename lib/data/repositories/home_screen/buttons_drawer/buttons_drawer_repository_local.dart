import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/home_screen/buttons_drawer/buttons_drawer_repository.dart';
import 'package:nextmind_mobile/data/services/home_screen/buttons_drawer_local_storage.dart';
import 'package:nextmind_mobile/domain/models/button_drawer/button_drawer.dart';
import 'package:result_dart/result_dart.dart';

class ButtonsDrawerRepositoryLocal extends GetxController
    implements ButtonsDrawerRepository {
  @override
  AsyncResult<List<ButtonDrawer>> fetchButtonsDrawerByUserType() async {
    return await ButtonsDrawerLocalStorage.to.fetchButtonsDrawerByUserType();
  }
}
