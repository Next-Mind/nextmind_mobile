import 'package:nextmind_mobile/domain/models/user/user.dart';

abstract interface class LoginResult {
  User getUser();
}

class UserLogged extends LoginResult {
  final LoggedUser _user;
  UserLogged(this._user);

  @override
  LoggedUser getUser() {
    return _user;
  }
}

class NeedsFormSubscription extends LoginResult {
  final ApiUser _user;
  NeedsFormSubscription(this._user);

  @override
  ApiUser getUser() {
    return _user;
  }
}
