import 'package:get/get.dart';
import 'package:logger/logger.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/domain/models/user/user.dart';
import 'package:nextmind_mobile/utils/routes/app_routes.dart';

class MainViewModel extends GetxController {
  final Logger _logger = Logger();
  final AuthRepository _authRepository = AuthRepository.to;
  final _user = Rx<User>(NotLoggedUser());
  User get user => _user.value;

  static MainViewModel get to => MainViewModel();

  @override
  void onInit() {
    super.onInit();
    _logger.d('Initializing Main Viewmodel');
    ever(_user, (_) {
      handlePage();
    });
    _user.bindStream(_authRepository.userObserver());
  }

  @override
  void onReady() {
    super.onReady();
    handlePage();
  }

  void handlePage() {
    Get.testMode = true;
    if (user is LoggedUser) {
      _logger.d('$runtimeType: User Logged');
      Get.offAllNamed(AppRoutes.home);
    } else {
      Get.offAllNamed(AppRoutes.authHome);
    }
    update();
  }
}
