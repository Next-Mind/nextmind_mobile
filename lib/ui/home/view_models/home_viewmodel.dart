import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/domain/models/user/user.dart';
import 'package:result_dart/result_dart.dart';

class HomeViewModel extends GetxController {
  final AuthRepository _authRepository = AuthRepository.to;
  final _user = Rx<User>(NotLoggedUser());
  LoggedUser get user => _user.value as LoggedUser;

  final _isLoading = true.obs;

  bool get isLoading => _isLoading.value;
  bool get isLogged => _user.value is LoggedUser;

  @override
  void onInit() async {
    super.onInit();
    _user.bindStream(_authRepository.userObserver());
    ever(
      _user,
      (user) => user is LoggedUser
          ? _isLoading.value = false
          : _isLoading.value = true,
    );
    _user.value = await _authRepository.getUser().getOrThrow();
  }

  LoggedUser? get loggedUser =>
    _user.value is LoggedUser ? _user.value as LoggedUser : null;

  static HomeViewModel get to => Get.find<HomeViewModel>();

  void logout() {
    _authRepository.logout();
  }
}
