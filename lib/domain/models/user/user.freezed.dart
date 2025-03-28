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
    TResult Function(int id, String uid, String name, String email) $default, {
    required TResult Function(
            int id,
            String uid,
            String name,
            String email,
            String? password,
            DateTime? birthDate,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool personalInfoComplete,
            bool addressComplete,
            String? token)
        authApi,
    required TResult Function() empty,
    required TResult Function(
            int id,
            String uid,
            int userTypeId,
            String name,
            String email,
            String birthDate,
            String gender,
            String cpf,
            String ra,
            String crp,
            String phone1,
            String phone2,
            String addressStreet,
            String addressNumber,
            String addressComplement,
            String zipCode,
            String state,
            String profileImage,
            String profileDescription,
            int status,
            DateTime lastLogin,
            DateTime createdAt,
            DateTime updatedAt,
            bool personalInfoComplete,
            bool addressComplete,
            bool questionnaireAnswered,
            String token)
        fullProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String uid, String name, String email)?
        $default, {
    TResult? Function(
            int id,
            String uid,
            String name,
            String email,
            String? password,
            DateTime? birthDate,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool personalInfoComplete,
            bool addressComplete,
            String? token)?
        authApi,
    TResult? Function()? empty,
    TResult? Function(
            int id,
            String uid,
            int userTypeId,
            String name,
            String email,
            String birthDate,
            String gender,
            String cpf,
            String ra,
            String crp,
            String phone1,
            String phone2,
            String addressStreet,
            String addressNumber,
            String addressComplement,
            String zipCode,
            String state,
            String profileImage,
            String profileDescription,
            int status,
            DateTime lastLogin,
            DateTime createdAt,
            DateTime updatedAt,
            bool personalInfoComplete,
            bool addressComplete,
            bool questionnaireAnswered,
            String token)?
        fullProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String uid, String name, String email)? $default, {
    TResult Function(
            int id,
            String uid,
            String name,
            String email,
            String? password,
            DateTime? birthDate,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool personalInfoComplete,
            bool addressComplete,
            String? token)?
        authApi,
    TResult Function()? empty,
    TResult Function(
            int id,
            String uid,
            int userTypeId,
            String name,
            String email,
            String birthDate,
            String gender,
            String cpf,
            String ra,
            String crp,
            String phone1,
            String phone2,
            String addressStreet,
            String addressNumber,
            String addressComplement,
            String zipCode,
            String state,
            String profileImage,
            String profileDescription,
            int status,
            DateTime lastLogin,
            DateTime createdAt,
            DateTime updatedAt,
            bool personalInfoComplete,
            bool addressComplete,
            bool questionnaireAnswered,
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
  $Res call({int id, String uid, String name, String email});
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
    Object? id = null,
    Object? uid = null,
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$UserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
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
      {required this.id,
      required this.uid,
      required this.name,
      required this.email,
      final String? $type})
      : $type = $type ?? 'authenticated';

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int id;
  @override
  final String uid;
  @override
  final String name;
  @override
  final String email;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User(id: $id, uid: $uid, name: $name, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, uid, name, email);

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
    TResult Function(int id, String uid, String name, String email) $default, {
    required TResult Function(
            int id,
            String uid,
            String name,
            String email,
            String? password,
            DateTime? birthDate,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool personalInfoComplete,
            bool addressComplete,
            String? token)
        authApi,
    required TResult Function() empty,
    required TResult Function(
            int id,
            String uid,
            int userTypeId,
            String name,
            String email,
            String birthDate,
            String gender,
            String cpf,
            String ra,
            String crp,
            String phone1,
            String phone2,
            String addressStreet,
            String addressNumber,
            String addressComplement,
            String zipCode,
            String state,
            String profileImage,
            String profileDescription,
            int status,
            DateTime lastLogin,
            DateTime createdAt,
            DateTime updatedAt,
            bool personalInfoComplete,
            bool addressComplete,
            bool questionnaireAnswered,
            String token)
        fullProfile,
  }) {
    return $default(id, uid, name, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String uid, String name, String email)?
        $default, {
    TResult? Function(
            int id,
            String uid,
            String name,
            String email,
            String? password,
            DateTime? birthDate,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool personalInfoComplete,
            bool addressComplete,
            String? token)?
        authApi,
    TResult? Function()? empty,
    TResult? Function(
            int id,
            String uid,
            int userTypeId,
            String name,
            String email,
            String birthDate,
            String gender,
            String cpf,
            String ra,
            String crp,
            String phone1,
            String phone2,
            String addressStreet,
            String addressNumber,
            String addressComplement,
            String zipCode,
            String state,
            String profileImage,
            String profileDescription,
            int status,
            DateTime lastLogin,
            DateTime createdAt,
            DateTime updatedAt,
            bool personalInfoComplete,
            bool addressComplete,
            bool questionnaireAnswered,
            String token)?
        fullProfile,
  }) {
    return $default?.call(id, uid, name, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String uid, String name, String email)? $default, {
    TResult Function(
            int id,
            String uid,
            String name,
            String email,
            String? password,
            DateTime? birthDate,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool personalInfoComplete,
            bool addressComplete,
            String? token)?
        authApi,
    TResult Function()? empty,
    TResult Function(
            int id,
            String uid,
            int userTypeId,
            String name,
            String email,
            String birthDate,
            String gender,
            String cpf,
            String ra,
            String crp,
            String phone1,
            String phone2,
            String addressStreet,
            String addressNumber,
            String addressComplement,
            String zipCode,
            String state,
            String profileImage,
            String profileDescription,
            int status,
            DateTime lastLogin,
            DateTime createdAt,
            DateTime updatedAt,
            bool personalInfoComplete,
            bool addressComplete,
            bool questionnaireAnswered,
            String token)?
        fullProfile,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(id, uid, name, email);
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
      {required final int id,
      required final String uid,
      required final String name,
      required final String email}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  int get id;
  String get uid;
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
      {int id,
      String uid,
      String name,
      String email,
      String? password,
      DateTime? birthDate,
      String? ra,
      Map<String, dynamic>? questionnaire,
      bool questionnaireAnswered,
      bool personalInfoComplete,
      bool addressComplete,
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
    Object? id = null,
    Object? uid = null,
    Object? name = null,
    Object? email = null,
    Object? password = freezed,
    Object? birthDate = freezed,
    Object? ra = freezed,
    Object? questionnaire = freezed,
    Object? questionnaireAnswered = null,
    Object? personalInfoComplete = null,
    Object? addressComplete = null,
    Object? token = freezed,
  }) {
    return _then(_$ApiUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
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
      birthDate: freezed == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
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
      personalInfoComplete: null == personalInfoComplete
          ? _value.personalInfoComplete
          : personalInfoComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      addressComplete: null == addressComplete
          ? _value.addressComplete
          : addressComplete // ignore: cast_nullable_to_non_nullable
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
      {required this.id,
      required this.uid,
      required this.name,
      required this.email,
      this.password,
      this.birthDate,
      this.ra,
      final Map<String, dynamic>? questionnaire,
      required this.questionnaireAnswered,
      required this.personalInfoComplete,
      required this.addressComplete,
      required this.token,
      final String? $type})
      : _questionnaire = questionnaire,
        $type = $type ?? 'authApi';

  factory _$ApiUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$ApiUserImplFromJson(json);

  @override
  final int id;
  @override
  final String uid;
  @override
  final String name;
  @override
  final String email;
  @override
  final String? password;
  @override
  final DateTime? birthDate;
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
  final bool personalInfoComplete;
  @override
  final bool addressComplete;
  @override
  final String? token;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.authApi(id: $id, uid: $uid, name: $name, email: $email, password: $password, birthDate: $birthDate, ra: $ra, questionnaire: $questionnaire, questionnaireAnswered: $questionnaireAnswered, personalInfoComplete: $personalInfoComplete, addressComplete: $addressComplete, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.ra, ra) || other.ra == ra) &&
            const DeepCollectionEquality()
                .equals(other._questionnaire, _questionnaire) &&
            (identical(other.questionnaireAnswered, questionnaireAnswered) ||
                other.questionnaireAnswered == questionnaireAnswered) &&
            (identical(other.personalInfoComplete, personalInfoComplete) ||
                other.personalInfoComplete == personalInfoComplete) &&
            (identical(other.addressComplete, addressComplete) ||
                other.addressComplete == addressComplete) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      uid,
      name,
      email,
      password,
      birthDate,
      ra,
      const DeepCollectionEquality().hash(_questionnaire),
      questionnaireAnswered,
      personalInfoComplete,
      addressComplete,
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
    TResult Function(int id, String uid, String name, String email) $default, {
    required TResult Function(
            int id,
            String uid,
            String name,
            String email,
            String? password,
            DateTime? birthDate,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool personalInfoComplete,
            bool addressComplete,
            String? token)
        authApi,
    required TResult Function() empty,
    required TResult Function(
            int id,
            String uid,
            int userTypeId,
            String name,
            String email,
            String birthDate,
            String gender,
            String cpf,
            String ra,
            String crp,
            String phone1,
            String phone2,
            String addressStreet,
            String addressNumber,
            String addressComplement,
            String zipCode,
            String state,
            String profileImage,
            String profileDescription,
            int status,
            DateTime lastLogin,
            DateTime createdAt,
            DateTime updatedAt,
            bool personalInfoComplete,
            bool addressComplete,
            bool questionnaireAnswered,
            String token)
        fullProfile,
  }) {
    return authApi(id, uid, name, email, password, birthDate, ra, questionnaire,
        questionnaireAnswered, personalInfoComplete, addressComplete, token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String uid, String name, String email)?
        $default, {
    TResult? Function(
            int id,
            String uid,
            String name,
            String email,
            String? password,
            DateTime? birthDate,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool personalInfoComplete,
            bool addressComplete,
            String? token)?
        authApi,
    TResult? Function()? empty,
    TResult? Function(
            int id,
            String uid,
            int userTypeId,
            String name,
            String email,
            String birthDate,
            String gender,
            String cpf,
            String ra,
            String crp,
            String phone1,
            String phone2,
            String addressStreet,
            String addressNumber,
            String addressComplement,
            String zipCode,
            String state,
            String profileImage,
            String profileDescription,
            int status,
            DateTime lastLogin,
            DateTime createdAt,
            DateTime updatedAt,
            bool personalInfoComplete,
            bool addressComplete,
            bool questionnaireAnswered,
            String token)?
        fullProfile,
  }) {
    return authApi?.call(
        id,
        uid,
        name,
        email,
        password,
        birthDate,
        ra,
        questionnaire,
        questionnaireAnswered,
        personalInfoComplete,
        addressComplete,
        token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String uid, String name, String email)? $default, {
    TResult Function(
            int id,
            String uid,
            String name,
            String email,
            String? password,
            DateTime? birthDate,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool personalInfoComplete,
            bool addressComplete,
            String? token)?
        authApi,
    TResult Function()? empty,
    TResult Function(
            int id,
            String uid,
            int userTypeId,
            String name,
            String email,
            String birthDate,
            String gender,
            String cpf,
            String ra,
            String crp,
            String phone1,
            String phone2,
            String addressStreet,
            String addressNumber,
            String addressComplement,
            String zipCode,
            String state,
            String profileImage,
            String profileDescription,
            int status,
            DateTime lastLogin,
            DateTime createdAt,
            DateTime updatedAt,
            bool personalInfoComplete,
            bool addressComplete,
            bool questionnaireAnswered,
            String token)?
        fullProfile,
    required TResult orElse(),
  }) {
    if (authApi != null) {
      return authApi(
          id,
          uid,
          name,
          email,
          password,
          birthDate,
          ra,
          questionnaire,
          questionnaireAnswered,
          personalInfoComplete,
          addressComplete,
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
      {required final int id,
      required final String uid,
      required final String name,
      required final String email,
      final String? password,
      final DateTime? birthDate,
      final String? ra,
      final Map<String, dynamic>? questionnaire,
      required final bool questionnaireAnswered,
      required final bool personalInfoComplete,
      required final bool addressComplete,
      required final String? token}) = _$ApiUserImpl;

  factory ApiUser.fromJson(Map<String, dynamic> json) = _$ApiUserImpl.fromJson;

  int get id;
  String get uid;
  String get name;
  String get email;
  String? get password;
  DateTime? get birthDate;
  String? get ra;
  Map<String, dynamic>? get questionnaire;
  bool get questionnaireAnswered;
  bool get personalInfoComplete;
  bool get addressComplete;
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
    TResult Function(int id, String uid, String name, String email) $default, {
    required TResult Function(
            int id,
            String uid,
            String name,
            String email,
            String? password,
            DateTime? birthDate,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool personalInfoComplete,
            bool addressComplete,
            String? token)
        authApi,
    required TResult Function() empty,
    required TResult Function(
            int id,
            String uid,
            int userTypeId,
            String name,
            String email,
            String birthDate,
            String gender,
            String cpf,
            String ra,
            String crp,
            String phone1,
            String phone2,
            String addressStreet,
            String addressNumber,
            String addressComplement,
            String zipCode,
            String state,
            String profileImage,
            String profileDescription,
            int status,
            DateTime lastLogin,
            DateTime createdAt,
            DateTime updatedAt,
            bool personalInfoComplete,
            bool addressComplete,
            bool questionnaireAnswered,
            String token)
        fullProfile,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String uid, String name, String email)?
        $default, {
    TResult? Function(
            int id,
            String uid,
            String name,
            String email,
            String? password,
            DateTime? birthDate,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool personalInfoComplete,
            bool addressComplete,
            String? token)?
        authApi,
    TResult? Function()? empty,
    TResult? Function(
            int id,
            String uid,
            int userTypeId,
            String name,
            String email,
            String birthDate,
            String gender,
            String cpf,
            String ra,
            String crp,
            String phone1,
            String phone2,
            String addressStreet,
            String addressNumber,
            String addressComplement,
            String zipCode,
            String state,
            String profileImage,
            String profileDescription,
            int status,
            DateTime lastLogin,
            DateTime createdAt,
            DateTime updatedAt,
            bool personalInfoComplete,
            bool addressComplete,
            bool questionnaireAnswered,
            String token)?
        fullProfile,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String uid, String name, String email)? $default, {
    TResult Function(
            int id,
            String uid,
            String name,
            String email,
            String? password,
            DateTime? birthDate,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool personalInfoComplete,
            bool addressComplete,
            String? token)?
        authApi,
    TResult Function()? empty,
    TResult Function(
            int id,
            String uid,
            int userTypeId,
            String name,
            String email,
            String birthDate,
            String gender,
            String cpf,
            String ra,
            String crp,
            String phone1,
            String phone2,
            String addressStreet,
            String addressNumber,
            String addressComplement,
            String zipCode,
            String state,
            String profileImage,
            String profileDescription,
            int status,
            DateTime lastLogin,
            DateTime createdAt,
            DateTime updatedAt,
            bool personalInfoComplete,
            bool addressComplete,
            bool questionnaireAnswered,
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
      int userTypeId,
      String name,
      String email,
      String birthDate,
      String gender,
      String cpf,
      String ra,
      String crp,
      String phone1,
      String phone2,
      String addressStreet,
      String addressNumber,
      String addressComplement,
      String zipCode,
      String state,
      String profileImage,
      String profileDescription,
      int status,
      DateTime lastLogin,
      DateTime createdAt,
      DateTime updatedAt,
      bool personalInfoComplete,
      bool addressComplete,
      bool questionnaireAnswered,
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
    Object? userTypeId = null,
    Object? name = null,
    Object? email = null,
    Object? birthDate = null,
    Object? gender = null,
    Object? cpf = null,
    Object? ra = null,
    Object? crp = null,
    Object? phone1 = null,
    Object? phone2 = null,
    Object? addressStreet = null,
    Object? addressNumber = null,
    Object? addressComplement = null,
    Object? zipCode = null,
    Object? state = null,
    Object? profileImage = null,
    Object? profileDescription = null,
    Object? status = null,
    Object? lastLogin = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? personalInfoComplete = null,
    Object? addressComplete = null,
    Object? questionnaireAnswered = null,
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
      userTypeId: null == userTypeId
          ? _value.userTypeId
          : userTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      birthDate: null == birthDate
          ? _value.birthDate
          : birthDate // ignore: cast_nullable_to_non_nullable
              as String,
      gender: null == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
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
      addressStreet: null == addressStreet
          ? _value.addressStreet
          : addressStreet // ignore: cast_nullable_to_non_nullable
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
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      profileDescription: null == profileDescription
          ? _value.profileDescription
          : profileDescription // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      lastLogin: null == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      personalInfoComplete: null == personalInfoComplete
          ? _value.personalInfoComplete
          : personalInfoComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      addressComplete: null == addressComplete
          ? _value.addressComplete
          : addressComplete // ignore: cast_nullable_to_non_nullable
              as bool,
      questionnaireAnswered: null == questionnaireAnswered
          ? _value.questionnaireAnswered
          : questionnaireAnswered // ignore: cast_nullable_to_non_nullable
              as bool,
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$LoggedUserImpl implements LoggedUser {
  const _$LoggedUserImpl(
      {required this.id,
      required this.uid,
      required this.userTypeId,
      required this.name,
      required this.email,
      required this.birthDate,
      required this.gender,
      this.cpf = '',
      required this.ra,
      this.crp = '',
      this.phone1 = '',
      this.phone2 = '',
      this.addressStreet = '',
      this.addressNumber = '',
      this.addressComplement = '',
      this.zipCode = '',
      this.state = '',
      this.profileImage = '',
      this.profileDescription = '',
      this.status = 1,
      required this.lastLogin,
      required this.createdAt,
      required this.updatedAt,
      required this.personalInfoComplete,
      required this.addressComplete,
      required this.questionnaireAnswered,
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
  final int userTypeId;
  @override
  final String name;
  @override
  final String email;
  @override
  final String birthDate;
  @override
  final String gender;
  @override
  @JsonKey()
  final String cpf;
  @override
  final String ra;
  @override
  @JsonKey()
  final String crp;
  @override
  @JsonKey()
  final String phone1;
  @override
  @JsonKey()
  final String phone2;
  @override
  @JsonKey()
  final String addressStreet;
  @override
  @JsonKey()
  final String addressNumber;
  @override
  @JsonKey()
  final String addressComplement;
  @override
  @JsonKey()
  final String zipCode;
  @override
  @JsonKey()
  final String state;
  @override
  @JsonKey()
  final String profileImage;
  @override
  @JsonKey()
  final String profileDescription;
  @override
  @JsonKey()
  final int status;
  @override
  final DateTime lastLogin;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final bool personalInfoComplete;
  @override
  final bool addressComplete;
  @override
  final bool questionnaireAnswered;
  @override
  @JsonKey()
  final String token;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'User.fullProfile(id: $id, uid: $uid, userTypeId: $userTypeId, name: $name, email: $email, birthDate: $birthDate, gender: $gender, cpf: $cpf, ra: $ra, crp: $crp, phone1: $phone1, phone2: $phone2, addressStreet: $addressStreet, addressNumber: $addressNumber, addressComplement: $addressComplement, zipCode: $zipCode, state: $state, profileImage: $profileImage, profileDescription: $profileDescription, status: $status, lastLogin: $lastLogin, createdAt: $createdAt, updatedAt: $updatedAt, personalInfoComplete: $personalInfoComplete, addressComplete: $addressComplete, questionnaireAnswered: $questionnaireAnswered, token: $token)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoggedUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.userTypeId, userTypeId) ||
                other.userTypeId == userTypeId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.birthDate, birthDate) ||
                other.birthDate == birthDate) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.cpf, cpf) || other.cpf == cpf) &&
            (identical(other.ra, ra) || other.ra == ra) &&
            (identical(other.crp, crp) || other.crp == crp) &&
            (identical(other.phone1, phone1) || other.phone1 == phone1) &&
            (identical(other.phone2, phone2) || other.phone2 == phone2) &&
            (identical(other.addressStreet, addressStreet) ||
                other.addressStreet == addressStreet) &&
            (identical(other.addressNumber, addressNumber) ||
                other.addressNumber == addressNumber) &&
            (identical(other.addressComplement, addressComplement) ||
                other.addressComplement == addressComplement) &&
            (identical(other.zipCode, zipCode) || other.zipCode == zipCode) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.profileDescription, profileDescription) ||
                other.profileDescription == profileDescription) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.personalInfoComplete, personalInfoComplete) ||
                other.personalInfoComplete == personalInfoComplete) &&
            (identical(other.addressComplete, addressComplete) ||
                other.addressComplete == addressComplete) &&
            (identical(other.questionnaireAnswered, questionnaireAnswered) ||
                other.questionnaireAnswered == questionnaireAnswered) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        uid,
        userTypeId,
        name,
        email,
        birthDate,
        gender,
        cpf,
        ra,
        crp,
        phone1,
        phone2,
        addressStreet,
        addressNumber,
        addressComplement,
        zipCode,
        state,
        profileImage,
        profileDescription,
        status,
        lastLogin,
        createdAt,
        updatedAt,
        personalInfoComplete,
        addressComplete,
        questionnaireAnswered,
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
    TResult Function(int id, String uid, String name, String email) $default, {
    required TResult Function(
            int id,
            String uid,
            String name,
            String email,
            String? password,
            DateTime? birthDate,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool personalInfoComplete,
            bool addressComplete,
            String? token)
        authApi,
    required TResult Function() empty,
    required TResult Function(
            int id,
            String uid,
            int userTypeId,
            String name,
            String email,
            String birthDate,
            String gender,
            String cpf,
            String ra,
            String crp,
            String phone1,
            String phone2,
            String addressStreet,
            String addressNumber,
            String addressComplement,
            String zipCode,
            String state,
            String profileImage,
            String profileDescription,
            int status,
            DateTime lastLogin,
            DateTime createdAt,
            DateTime updatedAt,
            bool personalInfoComplete,
            bool addressComplete,
            bool questionnaireAnswered,
            String token)
        fullProfile,
  }) {
    return fullProfile(
        id,
        uid,
        userTypeId,
        name,
        email,
        birthDate,
        gender,
        cpf,
        ra,
        crp,
        phone1,
        phone2,
        addressStreet,
        addressNumber,
        addressComplement,
        zipCode,
        state,
        profileImage,
        profileDescription,
        status,
        lastLogin,
        createdAt,
        updatedAt,
        personalInfoComplete,
        addressComplete,
        questionnaireAnswered,
        token);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(int id, String uid, String name, String email)?
        $default, {
    TResult? Function(
            int id,
            String uid,
            String name,
            String email,
            String? password,
            DateTime? birthDate,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool personalInfoComplete,
            bool addressComplete,
            String? token)?
        authApi,
    TResult? Function()? empty,
    TResult? Function(
            int id,
            String uid,
            int userTypeId,
            String name,
            String email,
            String birthDate,
            String gender,
            String cpf,
            String ra,
            String crp,
            String phone1,
            String phone2,
            String addressStreet,
            String addressNumber,
            String addressComplement,
            String zipCode,
            String state,
            String profileImage,
            String profileDescription,
            int status,
            DateTime lastLogin,
            DateTime createdAt,
            DateTime updatedAt,
            bool personalInfoComplete,
            bool addressComplete,
            bool questionnaireAnswered,
            String token)?
        fullProfile,
  }) {
    return fullProfile?.call(
        id,
        uid,
        userTypeId,
        name,
        email,
        birthDate,
        gender,
        cpf,
        ra,
        crp,
        phone1,
        phone2,
        addressStreet,
        addressNumber,
        addressComplement,
        zipCode,
        state,
        profileImage,
        profileDescription,
        status,
        lastLogin,
        createdAt,
        updatedAt,
        personalInfoComplete,
        addressComplete,
        questionnaireAnswered,
        token);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(int id, String uid, String name, String email)? $default, {
    TResult Function(
            int id,
            String uid,
            String name,
            String email,
            String? password,
            DateTime? birthDate,
            String? ra,
            Map<String, dynamic>? questionnaire,
            bool questionnaireAnswered,
            bool personalInfoComplete,
            bool addressComplete,
            String? token)?
        authApi,
    TResult Function()? empty,
    TResult Function(
            int id,
            String uid,
            int userTypeId,
            String name,
            String email,
            String birthDate,
            String gender,
            String cpf,
            String ra,
            String crp,
            String phone1,
            String phone2,
            String addressStreet,
            String addressNumber,
            String addressComplement,
            String zipCode,
            String state,
            String profileImage,
            String profileDescription,
            int status,
            DateTime lastLogin,
            DateTime createdAt,
            DateTime updatedAt,
            bool personalInfoComplete,
            bool addressComplete,
            bool questionnaireAnswered,
            String token)?
        fullProfile,
    required TResult orElse(),
  }) {
    if (fullProfile != null) {
      return fullProfile(
          id,
          uid,
          userTypeId,
          name,
          email,
          birthDate,
          gender,
          cpf,
          ra,
          crp,
          phone1,
          phone2,
          addressStreet,
          addressNumber,
          addressComplement,
          zipCode,
          state,
          profileImage,
          profileDescription,
          status,
          lastLogin,
          createdAt,
          updatedAt,
          personalInfoComplete,
          addressComplete,
          questionnaireAnswered,
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
      required final int userTypeId,
      required final String name,
      required final String email,
      required final String birthDate,
      required final String gender,
      final String cpf,
      required final String ra,
      final String crp,
      final String phone1,
      final String phone2,
      final String addressStreet,
      final String addressNumber,
      final String addressComplement,
      final String zipCode,
      final String state,
      final String profileImage,
      final String profileDescription,
      final int status,
      required final DateTime lastLogin,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final bool personalInfoComplete,
      required final bool addressComplete,
      required final bool questionnaireAnswered,
      final String token}) = _$LoggedUserImpl;

  factory LoggedUser.fromJson(Map<String, dynamic> json) =
      _$LoggedUserImpl.fromJson;

  int get id;
  String get uid;
  int get userTypeId;
  String get name;
  String get email;
  String get birthDate;
  String get gender;
  String get cpf;
  String get ra;
  String get crp;
  String get phone1;
  String get phone2;
  String get addressStreet;
  String get addressNumber;
  String get addressComplement;
  String get zipCode;
  String get state;
  String get profileImage;
  String get profileDescription;
  int get status;
  DateTime get lastLogin;
  DateTime get createdAt;
  DateTime get updatedAt;
  bool get personalInfoComplete;
  bool get addressComplete;
  bool get questionnaireAnswered;
  String get token;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoggedUserImplCopyWith<_$LoggedUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
