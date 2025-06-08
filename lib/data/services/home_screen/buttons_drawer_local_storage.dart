import 'package:get/get.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/data/services/auth/auth_local_storage.dart';
import 'package:nextmind_mobile/domain/models/button_drawer/button_drawer.dart';
import 'package:nextmind_mobile/utils/routes/app_routes.dart';
import 'package:result_dart/result_dart.dart';

class ButtonsDrawerLocalStorage extends GetxController {
  static get to => Get.find<ButtonsDrawerLocalStorage>();

  final List<ButtonDrawer> _commonUserButtons = [
    ButtonDrawer(
        title: 'NavUserProfile',
        iconPath: 'account_circle_outlined',
        routeName: AppRoutes.home),
    ButtonDrawer(
      title: 'NavSettings',
      iconPath: 'settings_outlined',
      routeName: AppRoutes.home,
    ),
    ButtonDrawer(
      title: 'NavAppointments',
      iconPath: 'local_hospital_outlined',
      routeName: AppRoutes.home,
    ),
    ButtonDrawer(
      title: 'NavLogout',
      iconPath: 'logout_outlined',
      onPressed: () => AuthRepository.to.logout(),
    ),
  ];

  final List<ButtonDrawer> _psychologistButtons = [
    ButtonDrawer(
      title: 'NavUserProfile',
      iconPath: 'account_circle_outlined',
      routeName: AppRoutes.home,
    ),
    ButtonDrawer(
      title: 'NavSettings',
      iconPath: 'settings_outlined',
      routeName: AppRoutes.home,
    ),
    ButtonDrawer(
      title: 'NavAppointments',
      iconPath: 'local_hospital_outlined',
      routeName: AppRoutes.home,
    ),
    ButtonDrawer(
      title: 'NavPatients',
      iconPath: 'people_outline',
      routeName: AppRoutes.home,
    ),
    ButtonDrawer(
      title: 'NavReports',
      iconPath: 'book_outlined',
      routeName: AppRoutes.home,
    ),
    ButtonDrawer(
      title: 'NavLogout',
      iconPath: 'logout_outlined',
      onPressed: () => AuthRepository.to.logout(),
    ),
  ];

  final List<ButtonDrawer> _adminButtons = [
    ButtonDrawer(
      title: 'NavUserProfile',
      iconPath: 'account_circle_outlined',
      routeName: AppRoutes.home,
    ),
    ButtonDrawer(
      title: 'NavSettings',
      iconPath: 'settings_outlined',
      routeName: AppRoutes.home,
    ),
    ButtonDrawer(
      title: 'NavAppointments',
      iconPath: 'local_hospital_outlined',
      routeName: AppRoutes.home,
    ),
    ButtonDrawer(
      title: 'NavPatients',
      iconPath: 'people_outline',
      routeName: AppRoutes.home,
    ),
    ButtonDrawer(
      title: 'NavReports',
      iconPath: 'book_outlined',
      routeName: AppRoutes.home,
    ),
    ButtonDrawer(
      title: 'NavUsersManagement',
      iconPath: 'manage_accounts_outlined',
      routeName: AppRoutes.home,
    ),
    ButtonDrawer(
      title: 'NavDevOptions',
      iconPath: 'developer_board',
      routeName: AppRoutes.home,
    ),
    ButtonDrawer(
      title: 'NavLogout',
      iconPath: 'logout_outlined',
      onPressed: () => AuthRepository.to.logout(),
    ),
  ];

  AsyncResult<List<ButtonDrawer>> fetchButtonsDrawerByUserType() async {
    final userType = await AuthLocalStorage.to
        .getUser()
        .getOrThrow()
        .then((user) => user.userTypeId);

    switch (userType) {
      case 1:
        return Success(_commonUserButtons);
      case 3:
        return Success(_psychologistButtons);
      case 6:
        return Success(_adminButtons);
      default:
        return Success(_commonUserButtons);
    }
  }
}
