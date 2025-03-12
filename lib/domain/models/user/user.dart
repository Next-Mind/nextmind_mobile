// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
sealed class User with _$User {
  @FreezedUnionValue('authenticated')
  factory User({
    required String uid,
    required int id,
    required String name,
    required String email,
  }) = _User;

  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory User.authApi({
    required String uid,
    required int id,
    required String name,
    required String email,
    String? password,
    DateTime? birthday,
    String? ra,
    Map<String, dynamic>? questionnaire,
    required bool questionnaireAnswered,
    required bool completeProfile,
    required bool completeRegistration,
    required String? token,
  }) = ApiUser;

  const factory User.empty() = NotLoggedUser;

  const factory User.fullProfile({
    required int id,
    required String uid,
    @JsonKey(name: 'tipo_usuario_id') @Default(1) int userType,
    @JsonKey(name: 'nome') @Default('') String name,
    @JsonKey(name: 'email') @Default('') String email,
    @JsonKey(name: 'data_nascimento') @Default('') String birthday,
    @Default('') String cpf,
    @Default('') String ra,
    @Default('') String crp,
    @JsonKey(name: 'fone1') @Default('') String phone1,
    @JsonKey(name: 'fone2') @Default('') String phone2,
    @JsonKey(name: 'logradouro') @Default('') String address,
    @JsonKey(name: 'numero') @Default('') String addressNumber,
    @JsonKey(name: 'complemento') @Default('') String addressComplement,
    @JsonKey(name: 'cep') @Default('') String zipCode,
    @JsonKey(name: 'estado') @Default('') String state,
    @JsonKey(name: 'imagem_perfil') @Default('') String photoURL,
    @JsonKey(name: 'descricao') @Default('') String description,
    @JsonKey(name: 'situacao') @Default(1) int situation,
    @JsonKey(name: 'data_ultimo_acesso') required DateTime lastLoginDate,
    @JsonKey(name: 'data_cadastro') required DateTime createdAt,
    @JsonKey(name: 'perfil_completo') required bool completeProfile,
    @JsonKey(name: 'questionario_respondido')
    required bool questionnaireAnswered,
    @JsonKey(name: 'cadastro_completo') required bool completeRegistration,
    @Default('') String token,
  }) = LoggedUser;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
