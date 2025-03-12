// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'authenticated':
      return _User.fromJson(json);
    case 'authApi':
      return ApiUser.fromJson(json);
    case 'empty':
      return NotLoggedUser.fromJson(json);
    case 'fullProfile':
      return LoggedUser.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'User',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$User {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid, int id, String name, String email) $default, {
    required TResult Function(
            String uid,
            int id,
            String name,
            String email,
            String? password,
            DateTime? birthday,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool completeProfile,
            bool completeRegistration,
            String? token)
        authApi,
    required TResult Function() empty,
    required TResult Function(
            int id,
            String uid,
            @JsonKey(name: 'tipo_usuario_id') int userType,
            @JsonKey(name: 'nome') String name,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'data_nascimento') String birthday,
            String cpf,
            String ra,
            String crp,
            @JsonKey(name: 'fone1') String phone1,
            @JsonKey(name: 'fone2') String phone2,
            @JsonKey(name: 'logradouro') String address,
            @JsonKey(name: 'numero') String addressNumber,
            @JsonKey(name: 'complemento') String addressComplement,
            @JsonKey(name: 'cep') String zipCode,
            @JsonKey(name: 'estado') String state,
            @JsonKey(name: 'imagem_perfil') String photoURL,
            @JsonKey(name: 'descricao') String description,
            @JsonKey(name: 'situacao') int situation,
            @JsonKey(name: 'data_ultimo_acesso') DateTime lastLoginDate,
            @JsonKey(name: 'data_cadastro') DateTime createdAt,
            @JsonKey(name: 'perfil_completo') bool completeProfile,
            @JsonKey(name: 'questionario_respondido')
            bool questionnaireAnswered,
            @JsonKey(name: 'cadastro_completo') bool completeRegistration,
            String token)
        fullProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid, int id, String name, String email)?
        $default, {
    TResult? Function(
            String uid,
            int id,
            String name,
            String email,
            String? password,
            DateTime? birthday,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool completeProfile,
            bool completeRegistration,
            String? token)?
        authApi,
    TResult? Function()? empty,
    TResult? Function(
            int id,
            String uid,
            @JsonKey(name: 'tipo_usuario_id') int userType,
            @JsonKey(name: 'nome') String name,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'data_nascimento') String birthday,
            String cpf,
            String ra,
            String crp,
            @JsonKey(name: 'fone1') String phone1,
            @JsonKey(name: 'fone2') String phone2,
            @JsonKey(name: 'logradouro') String address,
            @JsonKey(name: 'numero') String addressNumber,
            @JsonKey(name: 'complemento') String addressComplement,
            @JsonKey(name: 'cep') String zipCode,
            @JsonKey(name: 'estado') String state,
            @JsonKey(name: 'imagem_perfil') String photoURL,
            @JsonKey(name: 'descricao') String description,
            @JsonKey(name: 'situacao') int situation,
            @JsonKey(name: 'data_ultimo_acesso') DateTime lastLoginDate,
            @JsonKey(name: 'data_cadastro') DateTime createdAt,
            @JsonKey(name: 'perfil_completo') bool completeProfile,
            @JsonKey(name: 'questionario_respondido')
            bool questionnaireAnswered,
            @JsonKey(name: 'cadastro_completo') bool completeRegistration,
            String token)?
        fullProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid, int id, String name, String email)? $default, {
    TResult Function(
            String uid,
            int id,
            String name,
            String email,
            String? password,
            DateTime? birthday,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool completeProfile,
            bool completeRegistration,
            String? token)?
        authApi,
    TResult Function()? empty,
    TResult Function(
            int id,
            String uid,
            @JsonKey(name: 'tipo_usuario_id') int userType,
            @JsonKey(name: 'nome') String name,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'data_nascimento') String birthday,
            String cpf,
            String ra,
            String crp,
            @JsonKey(name: 'fone1') String phone1,
            @JsonKey(name: 'fone2') String phone2,
            @JsonKey(name: 'logradouro') String address,
            @JsonKey(name: 'numero') String addressNumber,
            @JsonKey(name: 'complemento') String addressComplement,
            @JsonKey(name: 'cep') String zipCode,
            @JsonKey(name: 'estado') String state,
            @JsonKey(name: 'imagem_perfil') String photoURL,
            @JsonKey(name: 'descricao') String description,
            @JsonKey(name: 'situacao') int situation,
            @JsonKey(name: 'data_ultimo_acesso') DateTime lastLoginDate,
            @JsonKey(name: 'data_cadastro') DateTime createdAt,
            @JsonKey(name: 'perfil_completo') bool completeProfile,
            @JsonKey(name: 'questionario_respondido')
            bool questionnaireAnswered,
            @JsonKey(name: 'cadastro_completo') bool completeRegistration,
            String token)?
        fullProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_User value) $default, {
    required TResult Function(ApiUser value) authApi,
    required TResult Function(NotLoggedUser value) empty,
    required TResult Function(LoggedUser value) fullProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_User value)? $default, {
    TResult? Function(ApiUser value)? authApi,
    TResult? Function(NotLoggedUser value)? empty,
    TResult? Function(LoggedUser value)? fullProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(ApiUser value)? authApi,
    TResult Function(NotLoggedUser value)? empty,
    TResult Function(LoggedUser value)? fullProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String uid, int id, String name, String email});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? id = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$UserImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {required this.uid,
      required this.id,
      required this.name,
      required this.email,
      final String? $type})
      : $type = $type ?? 'authenticated';

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final String uid;
  @override
  final int id;
  @override
  final String name;
  @override
  final String email;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User(uid: $uid, id: $id, name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, uid, id, name, email);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid, int id, String name, String email) $default, {
    required TResult Function(
            String uid,
            int id,
            String name,
            String email,
            String? password,
            DateTime? birthday,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool completeProfile,
            bool completeRegistration,
            String? token)
        authApi,
    required TResult Function() empty,
    required TResult Function(
            int id,
            String uid,
            @JsonKey(name: 'tipo_usuario_id') int userType,
            @JsonKey(name: 'nome') String name,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'data_nascimento') String birthday,
            String cpf,
            String ra,
            String crp,
            @JsonKey(name: 'fone1') String phone1,
            @JsonKey(name: 'fone2') String phone2,
            @JsonKey(name: 'logradouro') String address,
            @JsonKey(name: 'numero') String addressNumber,
            @JsonKey(name: 'complemento') String addressComplement,
            @JsonKey(name: 'cep') String zipCode,
            @JsonKey(name: 'estado') String state,
            @JsonKey(name: 'imagem_perfil') String photoURL,
            @JsonKey(name: 'descricao') String description,
            @JsonKey(name: 'situacao') int situation,
            @JsonKey(name: 'data_ultimo_acesso') DateTime lastLoginDate,
            @JsonKey(name: 'data_cadastro') DateTime createdAt,
            @JsonKey(name: 'perfil_completo') bool completeProfile,
            @JsonKey(name: 'questionario_respondido')
            bool questionnaireAnswered,
            @JsonKey(name: 'cadastro_completo') bool completeRegistration,
            String token)
        fullProfile,
  }) {
    return $default(uid, id, name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid, int id, String name, String email)?
        $default, {
    TResult? Function(
            String uid,
            int id,
            String name,
            String email,
            String? password,
            DateTime? birthday,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool completeProfile,
            bool completeRegistration,
            String? token)?
        authApi,
    TResult? Function()? empty,
    TResult? Function(
            int id,
            String uid,
            @JsonKey(name: 'tipo_usuario_id') int userType,
            @JsonKey(name: 'nome') String name,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'data_nascimento') String birthday,
            String cpf,
            String ra,
            String crp,
            @JsonKey(name: 'fone1') String phone1,
            @JsonKey(name: 'fone2') String phone2,
            @JsonKey(name: 'logradouro') String address,
            @JsonKey(name: 'numero') String addressNumber,
            @JsonKey(name: 'complemento') String addressComplement,
            @JsonKey(name: 'cep') String zipCode,
            @JsonKey(name: 'estado') String state,
            @JsonKey(name: 'imagem_perfil') String photoURL,
            @JsonKey(name: 'descricao') String description,
            @JsonKey(name: 'situacao') int situation,
            @JsonKey(name: 'data_ultimo_acesso') DateTime lastLoginDate,
            @JsonKey(name: 'data_cadastro') DateTime createdAt,
            @JsonKey(name: 'perfil_completo') bool completeProfile,
            @JsonKey(name: 'questionario_respondido')
            bool questionnaireAnswered,
            @JsonKey(name: 'cadastro_completo') bool completeRegistration,
            String token)?
        fullProfile,
  }) {
    return $default?.call(uid, id, name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid, int id, String name, String email)? $default, {
    TResult Function(
            String uid,
            int id,
            String name,
            String email,
            String? password,
            DateTime? birthday,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool completeProfile,
            bool completeRegistration,
            String? token)?
        authApi,
    TResult Function()? empty,
    TResult Function(
            int id,
            String uid,
            @JsonKey(name: 'tipo_usuario_id') int userType,
            @JsonKey(name: 'nome') String name,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'data_nascimento') String birthday,
            String cpf,
            String ra,
            String crp,
            @JsonKey(name: 'fone1') String phone1,
            @JsonKey(name: 'fone2') String phone2,
            @JsonKey(name: 'logradouro') String address,
            @JsonKey(name: 'numero') String addressNumber,
            @JsonKey(name: 'complemento') String addressComplement,
            @JsonKey(name: 'cep') String zipCode,
            @JsonKey(name: 'estado') String state,
            @JsonKey(name: 'imagem_perfil') String photoURL,
            @JsonKey(name: 'descricao') String description,
            @JsonKey(name: 'situacao') int situation,
            @JsonKey(name: 'data_ultimo_acesso') DateTime lastLoginDate,
            @JsonKey(name: 'data_cadastro') DateTime createdAt,
            @JsonKey(name: 'perfil_completo') bool completeProfile,
            @JsonKey(name: 'questionario_respondido')
            bool questionnaireAnswered,
            @JsonKey(name: 'cadastro_completo') bool completeRegistration,
            String token)?
        fullProfile,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(uid, id, name, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_User value) $default, {
    required TResult Function(ApiUser value) authApi,
    required TResult Function(NotLoggedUser value) empty,
    required TResult Function(LoggedUser value) fullProfile,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_User value)? $default, {
    TResult? Function(ApiUser value)? authApi,
    TResult? Function(NotLoggedUser value)? empty,
    TResult? Function(LoggedUser value)? fullProfile,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(ApiUser value)? authApi,
    TResult Function(NotLoggedUser value)? empty,
    TResult Function(LoggedUser value)? fullProfile,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {required final String uid,
      required final int id,
      required final String name,
      required final String email}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  String get uid;
  int get id;
  String get name;
  String get email;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiUserImplCopyWith<$Res> {
  factory _$$ApiUserImplCopyWith(
          _$ApiUserImpl value, $Res Function(_$ApiUserImpl) then) =
      __$$ApiUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String uid,
      int id,
      String name,
      String email,
      String? password,
      DateTime? birthday,
      String? ra,
      Map<String, dynamic>? questionnaire,
      bool questionnaireAnswered,
      bool completeProfile,
      bool completeRegistration,
      String? token});
}

/// @nodoc
class __$$ApiUserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$ApiUserImpl>
    implements _$$ApiUserImplCopyWith<$Res> {
  __$$ApiUserImplCopyWithImpl(
      _$ApiUserImpl _value, $Res Function(_$ApiUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? id = null,
    Object? name = null,
    Object? email = null,
    Object? password = freezed,
    Object? birthday = freezed,
    Object? ra = freezed,
    Object? questionnaire = freezed,
    Object? questionnaireAnswered = null,
    Object? completeProfile = null,
    Object? completeRegistration = null,
    Object? token = freezed,
  }) {
    return _then(_$ApiUserImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      birthday: freezed == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ra: freezed == ra
          ? _value.ra
          : ra // ignore: cast_nullable_to_non_nullable
              as String?,
      questionnaire: freezed == questionnaire
          ? _value._questionnaire
          : questionnaire // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      questionnaireAnswered: null == questionnaireAnswered
          ? _value.questionnaireAnswered
          : questionnaireAnswered // ignore: cast_nullable_to_non_nullable
              as bool,
      completeProfile: null == completeProfile
          ? _value.completeProfile
          : completeProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      completeRegistration: null == completeRegistration
          ? _value.completeRegistration
          : completeRegistration // ignore: cast_nullable_to_non_nullable
              as bool,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ApiUserImpl implements ApiUser {
  const _$ApiUserImpl(
      {required this.uid,
      required this.id,
      required this.name,
      required this.email,
      this.password,
      this.birthday,
      this.ra,
      final Map<String, dynamic>? questionnaire,
      required this.questionnaireAnswered,
      required this.completeProfile,
      required this.completeRegistration,
      required this.token,
      final String? $type})
      : _questionnaire = questionnaire,
        $type = $type ?? 'authApi';

  factory _$ApiUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiUserImplFromJson(json);

  @override
  final String uid;
  @override
  final int id;
  @override
  final String name;
  @override
  final String email;
  @override
  final String? password;
  @override
  final DateTime? birthday;
  @override
  final String? ra;
  final Map<String, dynamic>? _questionnaire;
  @override
  Map<String, dynamic>? get questionnaire {
    final value = _questionnaire;
    if (value == null) return null;
    if (_questionnaire is EqualUnmodifiableMapView) return _questionnaire;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  final bool questionnaireAnswered;
  @override
  final bool completeProfile;
  @override
  final bool completeRegistration;
  @override
  final String? token;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.authApi(uid: $uid, id: $id, name: $name, email: $email, password: $password, birthday: $birthday, ra: $ra, questionnaire: $questionnaire, questionnaireAnswered: $questionnaireAnswered, completeProfile: $completeProfile, completeRegistration: $completeRegistration, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiUserImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.ra, ra) || other.ra == ra) &&
            const DeepCollectionEquality()
                .equals(other._questionnaire, _questionnaire) &&
            (identical(other.questionnaireAnswered, questionnaireAnswered) ||
                other.questionnaireAnswered == questionnaireAnswered) &&
            (identical(other.completeProfile, completeProfile) ||
                other.completeProfile == completeProfile) &&
            (identical(other.completeRegistration, completeRegistration) ||
                other.completeRegistration == completeRegistration) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uid,
      id,
      name,
      email,
      password,
      birthday,
      ra,
      const DeepCollectionEquality().hash(_questionnaire),
      questionnaireAnswered,
      completeProfile,
      completeRegistration,
      token);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiUserImplCopyWith<_$ApiUserImpl> get copyWith =>
      __$$ApiUserImplCopyWithImpl<_$ApiUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid, int id, String name, String email) $default, {
    required TResult Function(
            String uid,
            int id,
            String name,
            String email,
            String? password,
            DateTime? birthday,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool completeProfile,
            bool completeRegistration,
            String? token)
        authApi,
    required TResult Function() empty,
    required TResult Function(
            int id,
            String uid,
            @JsonKey(name: 'tipo_usuario_id') int userType,
            @JsonKey(name: 'nome') String name,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'data_nascimento') String birthday,
            String cpf,
            String ra,
            String crp,
            @JsonKey(name: 'fone1') String phone1,
            @JsonKey(name: 'fone2') String phone2,
            @JsonKey(name: 'logradouro') String address,
            @JsonKey(name: 'numero') String addressNumber,
            @JsonKey(name: 'complemento') String addressComplement,
            @JsonKey(name: 'cep') String zipCode,
            @JsonKey(name: 'estado') String state,
            @JsonKey(name: 'imagem_perfil') String photoURL,
            @JsonKey(name: 'descricao') String description,
            @JsonKey(name: 'situacao') int situation,
            @JsonKey(name: 'data_ultimo_acesso') DateTime lastLoginDate,
            @JsonKey(name: 'data_cadastro') DateTime createdAt,
            @JsonKey(name: 'perfil_completo') bool completeProfile,
            @JsonKey(name: 'questionario_respondido')
            bool questionnaireAnswered,
            @JsonKey(name: 'cadastro_completo') bool completeRegistration,
            String token)
        fullProfile,
  }) {
    return authApi(uid, id, name, email, password, birthday, ra, questionnaire,
        questionnaireAnswered, completeProfile, completeRegistration, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid, int id, String name, String email)?
        $default, {
    TResult? Function(
            String uid,
            int id,
            String name,
            String email,
            String? password,
            DateTime? birthday,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool completeProfile,
            bool completeRegistration,
            String? token)?
        authApi,
    TResult? Function()? empty,
    TResult? Function(
            int id,
            String uid,
            @JsonKey(name: 'tipo_usuario_id') int userType,
            @JsonKey(name: 'nome') String name,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'data_nascimento') String birthday,
            String cpf,
            String ra,
            String crp,
            @JsonKey(name: 'fone1') String phone1,
            @JsonKey(name: 'fone2') String phone2,
            @JsonKey(name: 'logradouro') String address,
            @JsonKey(name: 'numero') String addressNumber,
            @JsonKey(name: 'complemento') String addressComplement,
            @JsonKey(name: 'cep') String zipCode,
            @JsonKey(name: 'estado') String state,
            @JsonKey(name: 'imagem_perfil') String photoURL,
            @JsonKey(name: 'descricao') String description,
            @JsonKey(name: 'situacao') int situation,
            @JsonKey(name: 'data_ultimo_acesso') DateTime lastLoginDate,
            @JsonKey(name: 'data_cadastro') DateTime createdAt,
            @JsonKey(name: 'perfil_completo') bool completeProfile,
            @JsonKey(name: 'questionario_respondido')
            bool questionnaireAnswered,
            @JsonKey(name: 'cadastro_completo') bool completeRegistration,
            String token)?
        fullProfile,
  }) {
    return authApi?.call(
        uid,
        id,
        name,
        email,
        password,
        birthday,
        ra,
        questionnaire,
        questionnaireAnswered,
        completeProfile,
        completeRegistration,
        token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid, int id, String name, String email)? $default, {
    TResult Function(
            String uid,
            int id,
            String name,
            String email,
            String? password,
            DateTime? birthday,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool completeProfile,
            bool completeRegistration,
            String? token)?
        authApi,
    TResult Function()? empty,
    TResult Function(
            int id,
            String uid,
            @JsonKey(name: 'tipo_usuario_id') int userType,
            @JsonKey(name: 'nome') String name,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'data_nascimento') String birthday,
            String cpf,
            String ra,
            String crp,
            @JsonKey(name: 'fone1') String phone1,
            @JsonKey(name: 'fone2') String phone2,
            @JsonKey(name: 'logradouro') String address,
            @JsonKey(name: 'numero') String addressNumber,
            @JsonKey(name: 'complemento') String addressComplement,
            @JsonKey(name: 'cep') String zipCode,
            @JsonKey(name: 'estado') String state,
            @JsonKey(name: 'imagem_perfil') String photoURL,
            @JsonKey(name: 'descricao') String description,
            @JsonKey(name: 'situacao') int situation,
            @JsonKey(name: 'data_ultimo_acesso') DateTime lastLoginDate,
            @JsonKey(name: 'data_cadastro') DateTime createdAt,
            @JsonKey(name: 'perfil_completo') bool completeProfile,
            @JsonKey(name: 'questionario_respondido')
            bool questionnaireAnswered,
            @JsonKey(name: 'cadastro_completo') bool completeRegistration,
            String token)?
        fullProfile,
    required TResult orElse(),
  }) {
    if (authApi != null) {
      return authApi(
          uid,
          id,
          name,
          email,
          password,
          birthday,
          ra,
          questionnaire,
          questionnaireAnswered,
          completeProfile,
          completeRegistration,
          token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_User value) $default, {
    required TResult Function(ApiUser value) authApi,
    required TResult Function(NotLoggedUser value) empty,
    required TResult Function(LoggedUser value) fullProfile,
  }) {
    return authApi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_User value)? $default, {
    TResult? Function(ApiUser value)? authApi,
    TResult? Function(NotLoggedUser value)? empty,
    TResult? Function(LoggedUser value)? fullProfile,
  }) {
    return authApi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(ApiUser value)? authApi,
    TResult Function(NotLoggedUser value)? empty,
    TResult Function(LoggedUser value)? fullProfile,
    required TResult orElse(),
  }) {
    if (authApi != null) {
      return authApi(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ApiUserImplToJson(
      this,
    );
  }
}

abstract class ApiUser implements User {
  const factory ApiUser(
      {required final String uid,
      required final int id,
      required final String name,
      required final String email,
      final String? password,
      final DateTime? birthday,
      final String? ra,
      final Map<String, dynamic>? questionnaire,
      required final bool questionnaireAnswered,
      required final bool completeProfile,
      required final bool completeRegistration,
      required final String? token}) = _$ApiUserImpl;

  factory ApiUser.fromJson(Map<String, dynamic> json) = _$ApiUserImpl.fromJson;

  String get uid;
  int get id;
  String get name;
  String get email;
  String? get password;
  DateTime? get birthday;
  String? get ra;
  Map<String, dynamic>? get questionnaire;
  bool get questionnaireAnswered;
  bool get completeProfile;
  bool get completeRegistration;
  String? get token;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiUserImplCopyWith<_$ApiUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotLoggedUserImplCopyWith<$Res> {
  factory _$$NotLoggedUserImplCopyWith(
          _$NotLoggedUserImpl value, $Res Function(_$NotLoggedUserImpl) then) =
      __$$NotLoggedUserImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotLoggedUserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$NotLoggedUserImpl>
    implements _$$NotLoggedUserImplCopyWith<$Res> {
  __$$NotLoggedUserImplCopyWithImpl(
      _$NotLoggedUserImpl _value, $Res Function(_$NotLoggedUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$NotLoggedUserImpl implements NotLoggedUser {
  const _$NotLoggedUserImpl({final String? $type}) : $type = $type ?? 'empty';

  factory _$NotLoggedUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$NotLoggedUserImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.empty()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotLoggedUserImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid, int id, String name, String email) $default, {
    required TResult Function(
            String uid,
            int id,
            String name,
            String email,
            String? password,
            DateTime? birthday,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool completeProfile,
            bool completeRegistration,
            String? token)
        authApi,
    required TResult Function() empty,
    required TResult Function(
            int id,
            String uid,
            @JsonKey(name: 'tipo_usuario_id') int userType,
            @JsonKey(name: 'nome') String name,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'data_nascimento') String birthday,
            String cpf,
            String ra,
            String crp,
            @JsonKey(name: 'fone1') String phone1,
            @JsonKey(name: 'fone2') String phone2,
            @JsonKey(name: 'logradouro') String address,
            @JsonKey(name: 'numero') String addressNumber,
            @JsonKey(name: 'complemento') String addressComplement,
            @JsonKey(name: 'cep') String zipCode,
            @JsonKey(name: 'estado') String state,
            @JsonKey(name: 'imagem_perfil') String photoURL,
            @JsonKey(name: 'descricao') String description,
            @JsonKey(name: 'situacao') int situation,
            @JsonKey(name: 'data_ultimo_acesso') DateTime lastLoginDate,
            @JsonKey(name: 'data_cadastro') DateTime createdAt,
            @JsonKey(name: 'perfil_completo') bool completeProfile,
            @JsonKey(name: 'questionario_respondido')
            bool questionnaireAnswered,
            @JsonKey(name: 'cadastro_completo') bool completeRegistration,
            String token)
        fullProfile,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid, int id, String name, String email)?
        $default, {
    TResult? Function(
            String uid,
            int id,
            String name,
            String email,
            String? password,
            DateTime? birthday,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool completeProfile,
            bool completeRegistration,
            String? token)?
        authApi,
    TResult? Function()? empty,
    TResult? Function(
            int id,
            String uid,
            @JsonKey(name: 'tipo_usuario_id') int userType,
            @JsonKey(name: 'nome') String name,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'data_nascimento') String birthday,
            String cpf,
            String ra,
            String crp,
            @JsonKey(name: 'fone1') String phone1,
            @JsonKey(name: 'fone2') String phone2,
            @JsonKey(name: 'logradouro') String address,
            @JsonKey(name: 'numero') String addressNumber,
            @JsonKey(name: 'complemento') String addressComplement,
            @JsonKey(name: 'cep') String zipCode,
            @JsonKey(name: 'estado') String state,
            @JsonKey(name: 'imagem_perfil') String photoURL,
            @JsonKey(name: 'descricao') String description,
            @JsonKey(name: 'situacao') int situation,
            @JsonKey(name: 'data_ultimo_acesso') DateTime lastLoginDate,
            @JsonKey(name: 'data_cadastro') DateTime createdAt,
            @JsonKey(name: 'perfil_completo') bool completeProfile,
            @JsonKey(name: 'questionario_respondido')
            bool questionnaireAnswered,
            @JsonKey(name: 'cadastro_completo') bool completeRegistration,
            String token)?
        fullProfile,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid, int id, String name, String email)? $default, {
    TResult Function(
            String uid,
            int id,
            String name,
            String email,
            String? password,
            DateTime? birthday,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool completeProfile,
            bool completeRegistration,
            String? token)?
        authApi,
    TResult Function()? empty,
    TResult Function(
            int id,
            String uid,
            @JsonKey(name: 'tipo_usuario_id') int userType,
            @JsonKey(name: 'nome') String name,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'data_nascimento') String birthday,
            String cpf,
            String ra,
            String crp,
            @JsonKey(name: 'fone1') String phone1,
            @JsonKey(name: 'fone2') String phone2,
            @JsonKey(name: 'logradouro') String address,
            @JsonKey(name: 'numero') String addressNumber,
            @JsonKey(name: 'complemento') String addressComplement,
            @JsonKey(name: 'cep') String zipCode,
            @JsonKey(name: 'estado') String state,
            @JsonKey(name: 'imagem_perfil') String photoURL,
            @JsonKey(name: 'descricao') String description,
            @JsonKey(name: 'situacao') int situation,
            @JsonKey(name: 'data_ultimo_acesso') DateTime lastLoginDate,
            @JsonKey(name: 'data_cadastro') DateTime createdAt,
            @JsonKey(name: 'perfil_completo') bool completeProfile,
            @JsonKey(name: 'questionario_respondido')
            bool questionnaireAnswered,
            @JsonKey(name: 'cadastro_completo') bool completeRegistration,
            String token)?
        fullProfile,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_User value) $default, {
    required TResult Function(ApiUser value) authApi,
    required TResult Function(NotLoggedUser value) empty,
    required TResult Function(LoggedUser value) fullProfile,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_User value)? $default, {
    TResult? Function(ApiUser value)? authApi,
    TResult? Function(NotLoggedUser value)? empty,
    TResult? Function(LoggedUser value)? fullProfile,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(ApiUser value)? authApi,
    TResult Function(NotLoggedUser value)? empty,
    TResult Function(LoggedUser value)? fullProfile,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NotLoggedUserImplToJson(
      this,
    );
  }
}

abstract class NotLoggedUser implements User {
  const factory NotLoggedUser() = _$NotLoggedUserImpl;

  factory NotLoggedUser.fromJson(Map<String, dynamic> json) =
      _$NotLoggedUserImpl.fromJson;
}

/// @nodoc
abstract class _$$LoggedUserImplCopyWith<$Res> {
  factory _$$LoggedUserImplCopyWith(
          _$LoggedUserImpl value, $Res Function(_$LoggedUserImpl) then) =
      __$$LoggedUserImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {int id,
      String uid,
      @JsonKey(name: 'tipo_usuario_id') int userType,
      @JsonKey(name: 'nome') String name,
      @JsonKey(name: 'email') String email,
      @JsonKey(name: 'data_nascimento') String birthday,
      String cpf,
      String ra,
      String crp,
      @JsonKey(name: 'fone1') String phone1,
      @JsonKey(name: 'fone2') String phone2,
      @JsonKey(name: 'logradouro') String address,
      @JsonKey(name: 'numero') String addressNumber,
      @JsonKey(name: 'complemento') String addressComplement,
      @JsonKey(name: 'cep') String zipCode,
      @JsonKey(name: 'estado') String state,
      @JsonKey(name: 'imagem_perfil') String photoURL,
      @JsonKey(name: 'descricao') String description,
      @JsonKey(name: 'situacao') int situation,
      @JsonKey(name: 'data_ultimo_acesso') DateTime lastLoginDate,
      @JsonKey(name: 'data_cadastro') DateTime createdAt,
      @JsonKey(name: 'perfil_completo') bool completeProfile,
      @JsonKey(name: 'questionario_respondido') bool questionnaireAnswered,
      @JsonKey(name: 'cadastro_completo') bool completeRegistration,
      String token});
}

/// @nodoc
class __$$LoggedUserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$LoggedUserImpl>
    implements _$$LoggedUserImplCopyWith<$Res> {
  __$$LoggedUserImplCopyWithImpl(
      _$LoggedUserImpl _value, $Res Function(_$LoggedUserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? uid = null,
    Object? userType = null,
    Object? name = null,
    Object? email = null,
    Object? birthday = null,
    Object? cpf = null,
    Object? ra = null,
    Object? crp = null,
    Object? phone1 = null,
    Object? phone2 = null,
    Object? address = null,
    Object? addressNumber = null,
    Object? addressComplement = null,
    Object? zipCode = null,
    Object? state = null,
    Object? photoURL = null,
    Object? description = null,
    Object? situation = null,
    Object? lastLoginDate = null,
    Object? createdAt = null,
    Object? completeProfile = null,
    Object? questionnaireAnswered = null,
    Object? completeRegistration = null,
    Object? token = null,
  }) {
    return _then(_$LoggedUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      userType: null == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birthday: null == birthday
          ? _value.birthday
          : birthday // ignore: cast_nullable_to_non_nullable
              as String,
      cpf: null == cpf
          ? _value.cpf
          : cpf // ignore: cast_nullable_to_non_nullable
              as String,
      ra: null == ra
          ? _value.ra
          : ra // ignore: cast_nullable_to_non_nullable
              as String,
      crp: null == crp
          ? _value.crp
          : crp // ignore: cast_nullable_to_non_nullable
              as String,
      phone1: null == phone1
          ? _value.phone1
          : phone1 // ignore: cast_nullable_to_non_nullable
              as String,
      phone2: null == phone2
          ? _value.phone2
          : phone2 // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      addressNumber: null == addressNumber
          ? _value.addressNumber
          : addressNumber // ignore: cast_nullable_to_non_nullable
              as String,
      addressComplement: null == addressComplement
          ? _value.addressComplement
          : addressComplement // ignore: cast_nullable_to_non_nullable
              as String,
      zipCode: null == zipCode
          ? _value.zipCode
          : zipCode // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      photoURL: null == photoURL
          ? _value.photoURL
          : photoURL // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      situation: null == situation
          ? _value.situation
          : situation // ignore: cast_nullable_to_non_nullable
              as int,
      lastLoginDate: null == lastLoginDate
          ? _value.lastLoginDate
          : lastLoginDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      completeProfile: null == completeProfile
          ? _value.completeProfile
          : completeProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      questionnaireAnswered: null == questionnaireAnswered
          ? _value.questionnaireAnswered
          : questionnaireAnswered // ignore: cast_nullable_to_non_nullable
              as bool,
      completeRegistration: null == completeRegistration
          ? _value.completeRegistration
          : completeRegistration // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoggedUserImpl implements LoggedUser {
  const _$LoggedUserImpl(
      {required this.id,
      required this.uid,
      @JsonKey(name: 'tipo_usuario_id') this.userType = 1,
      @JsonKey(name: 'nome') this.name = '',
      @JsonKey(name: 'email') this.email = '',
      @JsonKey(name: 'data_nascimento') this.birthday = '',
      this.cpf = '',
      this.ra = '',
      this.crp = '',
      @JsonKey(name: 'fone1') this.phone1 = '',
      @JsonKey(name: 'fone2') this.phone2 = '',
      @JsonKey(name: 'logradouro') this.address = '',
      @JsonKey(name: 'numero') this.addressNumber = '',
      @JsonKey(name: 'complemento') this.addressComplement = '',
      @JsonKey(name: 'cep') this.zipCode = '',
      @JsonKey(name: 'estado') this.state = '',
      @JsonKey(name: 'imagem_perfil') this.photoURL = '',
      @JsonKey(name: 'descricao') this.description = '',
      @JsonKey(name: 'situacao') this.situation = 1,
      @JsonKey(name: 'data_ultimo_acesso') required this.lastLoginDate,
      @JsonKey(name: 'data_cadastro') required this.createdAt,
      @JsonKey(name: 'perfil_completo') required this.completeProfile,
      @JsonKey(name: 'questionario_respondido')
      required this.questionnaireAnswered,
      @JsonKey(name: 'cadastro_completo') required this.completeRegistration,
      this.token = '',
      final String? $type})
      : $type = $type ?? 'fullProfile';

  factory _$LoggedUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoggedUserImplFromJson(json);

  @override
  final int id;
  @override
  final String uid;
  @override
  @JsonKey(name: 'tipo_usuario_id')
  final int userType;
  @override
  @JsonKey(name: 'nome')
  final String name;
  @override
  @JsonKey(name: 'email')
  final String email;
  @override
  @JsonKey(name: 'data_nascimento')
  final String birthday;
  @override
  @JsonKey()
  final String cpf;
  @override
  @JsonKey()
  final String ra;
  @override
  @JsonKey()
  final String crp;
  @override
  @JsonKey(name: 'fone1')
  final String phone1;
  @override
  @JsonKey(name: 'fone2')
  final String phone2;
  @override
  @JsonKey(name: 'logradouro')
  final String address;
  @override
  @JsonKey(name: 'numero')
  final String addressNumber;
  @override
  @JsonKey(name: 'complemento')
  final String addressComplement;
  @override
  @JsonKey(name: 'cep')
  final String zipCode;
  @override
  @JsonKey(name: 'estado')
  final String state;
  @override
  @JsonKey(name: 'imagem_perfil')
  final String photoURL;
  @override
  @JsonKey(name: 'descricao')
  final String description;
  @override
  @JsonKey(name: 'situacao')
  final int situation;
  @override
  @JsonKey(name: 'data_ultimo_acesso')
  final DateTime lastLoginDate;
  @override
  @JsonKey(name: 'data_cadastro')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'perfil_completo')
  final bool completeProfile;
  @override
  @JsonKey(name: 'questionario_respondido')
  final bool questionnaireAnswered;
  @override
  @JsonKey(name: 'cadastro_completo')
  final bool completeRegistration;
  @override
  @JsonKey()
  final String token;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.fullProfile(id: $id, uid: $uid, userType: $userType, name: $name, email: $email, birthday: $birthday, cpf: $cpf, ra: $ra, crp: $crp, phone1: $phone1, phone2: $phone2, address: $address, addressNumber: $addressNumber, addressComplement: $addressComplement, zipCode: $zipCode, state: $state, photoURL: $photoURL, description: $description, situation: $situation, lastLoginDate: $lastLoginDate, createdAt: $createdAt, completeProfile: $completeProfile, questionnaireAnswered: $questionnaireAnswered, completeRegistration: $completeRegistration, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.birthday, birthday) ||
                other.birthday == birthday) &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.ra, ra) || other.ra == ra) &&
            (identical(other.crp, crp) || other.crp == crp) &&
            (identical(other.phone1, phone1) || other.phone1 == phone1) &&
            (identical(other.phone2, phone2) || other.phone2 == phone2) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.addressNumber, addressNumber) ||
                other.addressNumber == addressNumber) &&
            (identical(other.addressComplement, addressComplement) ||
                other.addressComplement == addressComplement) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.photoURL, photoURL) ||
                other.photoURL == photoURL) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.situation, situation) ||
                other.situation == situation) &&
            (identical(other.lastLoginDate, lastLoginDate) ||
                other.lastLoginDate == lastLoginDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.completeProfile, completeProfile) ||
                other.completeProfile == completeProfile) &&
            (identical(other.questionnaireAnswered, questionnaireAnswered) ||
                other.questionnaireAnswered == questionnaireAnswered) &&
            (identical(other.completeRegistration, completeRegistration) ||
                other.completeRegistration == completeRegistration) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        uid,
        userType,
        name,
        email,
        birthday,
        cpf,
        ra,
        crp,
        phone1,
        phone2,
        address,
        addressNumber,
        addressComplement,
        zipCode,
        state,
        photoURL,
        description,
        situation,
        lastLoginDate,
        createdAt,
        completeProfile,
        questionnaireAnswered,
        completeRegistration,
        token
      ]);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoggedUserImplCopyWith<_$LoggedUserImpl> get copyWith =>
      __$$LoggedUserImplCopyWithImpl<_$LoggedUserImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String uid, int id, String name, String email) $default, {
    required TResult Function(
            String uid,
            int id,
            String name,
            String email,
            String? password,
            DateTime? birthday,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool completeProfile,
            bool completeRegistration,
            String? token)
        authApi,
    required TResult Function() empty,
    required TResult Function(
            int id,
            String uid,
            @JsonKey(name: 'tipo_usuario_id') int userType,
            @JsonKey(name: 'nome') String name,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'data_nascimento') String birthday,
            String cpf,
            String ra,
            String crp,
            @JsonKey(name: 'fone1') String phone1,
            @JsonKey(name: 'fone2') String phone2,
            @JsonKey(name: 'logradouro') String address,
            @JsonKey(name: 'numero') String addressNumber,
            @JsonKey(name: 'complemento') String addressComplement,
            @JsonKey(name: 'cep') String zipCode,
            @JsonKey(name: 'estado') String state,
            @JsonKey(name: 'imagem_perfil') String photoURL,
            @JsonKey(name: 'descricao') String description,
            @JsonKey(name: 'situacao') int situation,
            @JsonKey(name: 'data_ultimo_acesso') DateTime lastLoginDate,
            @JsonKey(name: 'data_cadastro') DateTime createdAt,
            @JsonKey(name: 'perfil_completo') bool completeProfile,
            @JsonKey(name: 'questionario_respondido')
            bool questionnaireAnswered,
            @JsonKey(name: 'cadastro_completo') bool completeRegistration,
            String token)
        fullProfile,
  }) {
    return fullProfile(
        id,
        uid,
        userType,
        name,
        email,
        birthday,
        cpf,
        ra,
        crp,
        phone1,
        phone2,
        address,
        addressNumber,
        addressComplement,
        zipCode,
        state,
        photoURL,
        description,
        situation,
        lastLoginDate,
        createdAt,
        completeProfile,
        questionnaireAnswered,
        completeRegistration,
        token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String uid, int id, String name, String email)?
        $default, {
    TResult? Function(
            String uid,
            int id,
            String name,
            String email,
            String? password,
            DateTime? birthday,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool completeProfile,
            bool completeRegistration,
            String? token)?
        authApi,
    TResult? Function()? empty,
    TResult? Function(
            int id,
            String uid,
            @JsonKey(name: 'tipo_usuario_id') int userType,
            @JsonKey(name: 'nome') String name,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'data_nascimento') String birthday,
            String cpf,
            String ra,
            String crp,
            @JsonKey(name: 'fone1') String phone1,
            @JsonKey(name: 'fone2') String phone2,
            @JsonKey(name: 'logradouro') String address,
            @JsonKey(name: 'numero') String addressNumber,
            @JsonKey(name: 'complemento') String addressComplement,
            @JsonKey(name: 'cep') String zipCode,
            @JsonKey(name: 'estado') String state,
            @JsonKey(name: 'imagem_perfil') String photoURL,
            @JsonKey(name: 'descricao') String description,
            @JsonKey(name: 'situacao') int situation,
            @JsonKey(name: 'data_ultimo_acesso') DateTime lastLoginDate,
            @JsonKey(name: 'data_cadastro') DateTime createdAt,
            @JsonKey(name: 'perfil_completo') bool completeProfile,
            @JsonKey(name: 'questionario_respondido')
            bool questionnaireAnswered,
            @JsonKey(name: 'cadastro_completo') bool completeRegistration,
            String token)?
        fullProfile,
  }) {
    return fullProfile?.call(
        id,
        uid,
        userType,
        name,
        email,
        birthday,
        cpf,
        ra,
        crp,
        phone1,
        phone2,
        address,
        addressNumber,
        addressComplement,
        zipCode,
        state,
        photoURL,
        description,
        situation,
        lastLoginDate,
        createdAt,
        completeProfile,
        questionnaireAnswered,
        completeRegistration,
        token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String uid, int id, String name, String email)? $default, {
    TResult Function(
            String uid,
            int id,
            String name,
            String email,
            String? password,
            DateTime? birthday,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool completeProfile,
            bool completeRegistration,
            String? token)?
        authApi,
    TResult Function()? empty,
    TResult Function(
            int id,
            String uid,
            @JsonKey(name: 'tipo_usuario_id') int userType,
            @JsonKey(name: 'nome') String name,
            @JsonKey(name: 'email') String email,
            @JsonKey(name: 'data_nascimento') String birthday,
            String cpf,
            String ra,
            String crp,
            @JsonKey(name: 'fone1') String phone1,
            @JsonKey(name: 'fone2') String phone2,
            @JsonKey(name: 'logradouro') String address,
            @JsonKey(name: 'numero') String addressNumber,
            @JsonKey(name: 'complemento') String addressComplement,
            @JsonKey(name: 'cep') String zipCode,
            @JsonKey(name: 'estado') String state,
            @JsonKey(name: 'imagem_perfil') String photoURL,
            @JsonKey(name: 'descricao') String description,
            @JsonKey(name: 'situacao') int situation,
            @JsonKey(name: 'data_ultimo_acesso') DateTime lastLoginDate,
            @JsonKey(name: 'data_cadastro') DateTime createdAt,
            @JsonKey(name: 'perfil_completo') bool completeProfile,
            @JsonKey(name: 'questionario_respondido')
            bool questionnaireAnswered,
            @JsonKey(name: 'cadastro_completo') bool completeRegistration,
            String token)?
        fullProfile,
    required TResult orElse(),
  }) {
    if (fullProfile != null) {
      return fullProfile(
          id,
          uid,
          userType,
          name,
          email,
          birthday,
          cpf,
          ra,
          crp,
          phone1,
          phone2,
          address,
          addressNumber,
          addressComplement,
          zipCode,
          state,
          photoURL,
          description,
          situation,
          lastLoginDate,
          createdAt,
          completeProfile,
          questionnaireAnswered,
          completeRegistration,
          token);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_User value) $default, {
    required TResult Function(ApiUser value) authApi,
    required TResult Function(NotLoggedUser value) empty,
    required TResult Function(LoggedUser value) fullProfile,
  }) {
    return fullProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_User value)? $default, {
    TResult? Function(ApiUser value)? authApi,
    TResult? Function(NotLoggedUser value)? empty,
    TResult? Function(LoggedUser value)? fullProfile,
  }) {
    return fullProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(ApiUser value)? authApi,
    TResult Function(NotLoggedUser value)? empty,
    TResult Function(LoggedUser value)? fullProfile,
    required TResult orElse(),
  }) {
    if (fullProfile != null) {
      return fullProfile(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$LoggedUserImplToJson(
      this,
    );
  }
}

abstract class LoggedUser implements User {
  const factory LoggedUser(
      {required final int id,
      required final String uid,
      @JsonKey(name: 'tipo_usuario_id') final int userType,
      @JsonKey(name: 'nome') final String name,
      @JsonKey(name: 'email') final String email,
      @JsonKey(name: 'data_nascimento') final String birthday,
      final String cpf,
      final String ra,
      final String crp,
      @JsonKey(name: 'fone1') final String phone1,
      @JsonKey(name: 'fone2') final String phone2,
      @JsonKey(name: 'logradouro') final String address,
      @JsonKey(name: 'numero') final String addressNumber,
      @JsonKey(name: 'complemento') final String addressComplement,
      @JsonKey(name: 'cep') final String zipCode,
      @JsonKey(name: 'estado') final String state,
      @JsonKey(name: 'imagem_perfil') final String photoURL,
      @JsonKey(name: 'descricao') final String description,
      @JsonKey(name: 'situacao') final int situation,
      @JsonKey(name: 'data_ultimo_acesso')
      required final DateTime lastLoginDate,
      @JsonKey(name: 'data_cadastro') required final DateTime createdAt,
      @JsonKey(name: 'perfil_completo') required final bool completeProfile,
      @JsonKey(name: 'questionario_respondido')
      required final bool questionnaireAnswered,
      @JsonKey(name: 'cadastro_completo')
      required final bool completeRegistration,
      final String token}) = _$LoggedUserImpl;

  factory LoggedUser.fromJson(Map<String, dynamic> json) =
      _$LoggedUserImpl.fromJson;

  int get id;
  String get uid;
  @JsonKey(name: 'tipo_usuario_id')
  int get userType;
  @JsonKey(name: 'nome')
  String get name;
  @JsonKey(name: 'email')
  String get email;
  @JsonKey(name: 'data_nascimento')
  String get birthday;
  String get cpf;
  String get ra;
  String get crp;
  @JsonKey(name: 'fone1')
  String get phone1;
  @JsonKey(name: 'fone2')
  String get phone2;
  @JsonKey(name: 'logradouro')
  String get address;
  @JsonKey(name: 'numero')
  String get addressNumber;
  @JsonKey(name: 'complemento')
  String get addressComplement;
  @JsonKey(name: 'cep')
  String get zipCode;
  @JsonKey(name: 'estado')
  String get state;
  @JsonKey(name: 'imagem_perfil')
  String get photoURL;
  @JsonKey(name: 'descricao')
  String get description;
  @JsonKey(name: 'situacao')
  int get situation;
  @JsonKey(name: 'data_ultimo_acesso')
  DateTime get lastLoginDate;
  @JsonKey(name: 'data_cadastro')
  DateTime get createdAt;
  @JsonKey(name: 'perfil_completo')
  bool get completeProfile;
  @JsonKey(name: 'questionario_respondido')
  bool get questionnaireAnswered;
  @JsonKey(name: 'cadastro_completo')
  bool get completeRegistration;
  String get token;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoggedUserImplCopyWith<_$LoggedUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
