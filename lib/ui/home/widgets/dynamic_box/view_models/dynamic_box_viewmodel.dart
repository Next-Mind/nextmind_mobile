import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/dynamic_box/dynamic_box_repository.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class DynamicBoxViewmodel extends GetxController {
  static DynamicBoxViewmodel get to => Get.find<DynamicBoxViewmodel>();

  final _dynamicBoxRepository = Get.find<DynamicBoxRepository>();

  var dynamicBoxTitle = 'Carregando...'.obs;
  var dynamicBoxContent = 'feeling_content'.obs;
  final RxInt happinessSelected = (-1).obs;
  final RxBool isRegistered = false.obs;

  late final onHappinessButtonPressedCommand =
      Command1<int, int>(onHappinessButtonPressed);

  AsyncResult<int> onHappinessButtonPressed(int index) async {
    _dynamicBoxRepository.onHappinessButtonPressed(index).fold(
      (success) {
        // Handle success if needed
      },
      (error) {
        // Handle error if needed
      },
    );
    return Success(index);
  }

  void selectHappiness(int index) {
    happinessSelected.value = index;
    Future.delayed(const Duration(seconds: 2), () {
      isRegistered.value = true;
    });
  }

  late final getDynamicBoxContentCommand = Command0<Unit>(getDynamicBoxContent);

  AsyncResult<Unit> getDynamicBoxContent() async {
    _dynamicBoxRepository.getDynamicBoxContent().fold(
      (dynamicBox) {
        dynamicBoxTitle.value = dynamicBox.dynamicBoxTitle;
      },
      (error) {
        dynamicBoxTitle.value = 'Erro ao carregar conteúdo';
      },
    );
    return Success(unit);
  }

  @override
  void onInit() {
    super.onInit();
    getDynamicBoxContentCommand.execute();
  }
}
