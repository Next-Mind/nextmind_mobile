// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
sealed class User with _$User {
  @FreezedUnionValue('authenticated')
  factory User({
    required int id,
    required String uid,
    required String name,
    required String email,
  }) = _User;

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory User.authApi({
    required int id,
    required String uid,
    required String name,
    required String email,
    String? password,
    DateTime? birthDate,
    String? ra,
    Map<String, dynamic>? questionnaire,
    required bool questionnaireAnswered,
    required bool personalInfoComplete,
    required bool addressComplete,
    required String? token,
  }) = ApiUser;

  const factory User.empty() = NotLoggedUser;

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory User.fullProfile({
    required int id,
    required String uid,
    required int userTypeId,
    required String name,
    required String email,
    required String birthDate,
    required String gender,
    @Default('') String cpf,
    required String ra,
    @Default('') String crp,
    @Default('') String phone1,
    @Default('') String phone2,
    @Default('') String addressStreet,
    @Default('') String addressNumber,
    @Default('') String addressComplement,
    @Default('') String zipCode,
    @Default('') String state,
    @Default('') String profileImage,
    @Default('') String profileDescription,
    @Default(1) int status,
    required DateTime lastLogin,
    required DateTime createdAt,
    required DateTime updatedAt,
    required bool personalInfoComplete,
    required bool addressComplete,
    required bool questionnaireAnswered,
    @Default('') String token,
  }) = LoggedUser;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
