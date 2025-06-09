import 'package:get/get.dart';
import 'package:logger/web.dart';
import 'package:nextmind_mobile/data/repositories/auth/auth_repository.dart';
import 'package:nextmind_mobile/domain/models/user/user.dart';
import 'package:result_command/result_command.dart';
import 'package:result_dart/result_dart.dart';

class UserAvatarViewmodel extends GetxController {
  static UserAvatarViewmodel get to => Get.find<UserAvatarViewmodel>();
  final AuthRepository _authRepository = Get.find<AuthRepository>();

  String userName = '';
  String userImageUrl = '';

  late final fetchUserCommand = Command0(_fetchUser);

  AsyncResult<Unit> _fetchUser() async {
    final LoggedUser user = await _authRepository.getUser().getOrThrow();
    userName = user.name;
    userImageUrl = user.profileImage;
    Logger()
        .d('$runtimeType: User fetched: $userName, Image URL: $userImageUrl');
    return Success(unit);
  }

  @override
  void onInit() async {
    super.onInit();
    fetchUserCommand.execute();
  }
}
