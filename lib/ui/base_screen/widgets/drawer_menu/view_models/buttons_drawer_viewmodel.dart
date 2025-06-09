import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nextmind_mobile/data/repositories/home_screen/buttons_drawer/buttons_drawer_repository.dart';
import 'package:nextmind_mobile/domain/models/button_drawer/button_drawer.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class ButtonsDrawerViewmodel extends GetxController {
  static get to => Get.find<ButtonsDrawerViewmodel>();

  List<ButtonDrawer> buttons = List.empty(growable: true);

  final _buttonsDrawerRepository = ButtonsDrawerRepository.to;

  final Logger _logger = Logger();

  late final Command0 initializeButtonsCommand = Command0(_initializeButtons);

  @override
  void onInit() {
    super.onInit();
    initializeButtonsCommand.execute();
  }

  AsyncResult<Unit> _initializeButtons() async {
    final result =
        await _buttonsDrawerRepository.fetchButtonsDrawerByUserType();
    result.fold(
      (buttonsList) {
        buttons = buttonsList;
      },
      (error) {
        _logger.e('Error fetching buttons: $error');
      },
    );
    return Success(unit);
  }
}
