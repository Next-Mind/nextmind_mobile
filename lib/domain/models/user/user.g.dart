// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num).toInt(),
      uid: json['uid'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'runtimeType': instance.$type,
    };

_$ApiUserImpl _$$ApiUserImplFromJson(Map<String, dynamic> json) =>
    _$ApiUserImpl(
      id: (json['id'] as num).toInt(),
      uid: json['uid'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String?,
      birthDate: json['birth_date'] == null
          ? null
          : DateTime.parse(json['birth_date'] as String),
      ra: json['ra'] as String?,
      questionnaire: json['questionnaire'] as Map<String, dynamic>?,
      questionnaireAnswered: json['questionnaire_answered'] as bool,
      personalInfoComplete: json['personal_info_complete'] as bool,
      addressComplete: json['address_complete'] as bool,
      token: json['token'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiUserImplToJson(_$ApiUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'birth_date': instance.birthDate?.toIso8601String(),
      'ra': instance.ra,
      'questionnaire': instance.questionnaire,
      'questionnaire_answered': instance.questionnaireAnswered,
      'personal_info_complete': instance.personalInfoComplete,
      'address_complete': instance.addressComplete,
      'token': instance.token,
      'runtimeType': instance.$type,
    };

_$NotLoggedUserImpl _$$NotLoggedUserImplFromJson(Map<String, dynamic> json) =>
    _$NotLoggedUserImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NotLoggedUserImplToJson(_$NotLoggedUserImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };

_$LoggedUserImpl _$$LoggedUserImplFromJson(Map<String, dynamic> json) =>
    _$LoggedUserImpl(
      id: (json['id'] as num).toInt(),
      uid: json['uid'] as String,
      userTypeId: (json['user_type_id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      birthDate: json['birth_date'] as String,
      gender: json['gender'] as String,
      cpf: json['cpf'] as String? ?? '',
      ra: json['ra'] as String,
      crp: json['crp'] as String? ?? '',
      phone1: json['phone1'] as String? ?? '',
      phone2: json['phone2'] as String? ?? '',
      addressStreet: json['address_street'] as String? ?? '',
      addressNumber: json['address_number'] as String? ?? '',
      addressComplement: json['address_complement'] as String? ?? '',
      zipCode: json['zip_code'] as String? ?? '',
      state: json['state'] as String? ?? '',
      profileImage: json['profile_image'] as String? ?? '',
      profileDescription: json['profile_description'] as String? ?? '',
      status: (json['status'] as num?)?.toInt() ?? 1,
      lastLogin: DateTime.parse(json['last_login'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      personalInfoComplete: json['personal_info_complete'] as bool,
      addressComplete: json['address_complete'] as bool,
      questionnaireAnswered: json['questionnaire_answered'] as bool,
      token: json['token'] as String? ?? '',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoggedUserImplToJson(_$LoggedUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'user_type_id': instance.userTypeId,
      'name': instance.name,
      'email': instance.email,
      'birth_date': instance.birthDate,
      'gender': instance.gender,
      'cpf': instance.cpf,
      'ra': instance.ra,
      'crp': instance.crp,
      'phone1': instance.phone1,
      'phone2': instance.phone2,
      'address_street': instance.addressStreet,
      'address_number': instance.addressNumber,
      'address_complement': instance.addressComplement,
      'zip_code': instance.zipCode,
      'state': instance.state,
      'profile_image': instance.profileImage,
      'profile_description': instance.profileDescription,
      'status': instance.status,
      'last_login': instance.lastLogin.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'personal_info_complete': instance.personalInfoComplete,
      'address_complete': instance.addressComplete,
      'questionnaire_answered': instance.questionnaireAnswered,
      'token': instance.token,
      'runtimeType': instance.$type,
    };
