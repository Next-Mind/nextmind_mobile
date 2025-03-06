import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
sealed class User with _$User {
  @FreezedUnionValue('authenticated')
  factory User([
    @Default('Undefined') String name,
    @Default('Undefined') String email,
    @Default('Undefined') String photoURL,
  ]) = _User;

  @FreezedUnionValue('empty')
  const factory User.notLogged() = NotLoggedUser;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
