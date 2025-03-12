// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      uid: json['uid'] as String,
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'runtimeType': instance.$type,
    };

_$ApiUserImpl _$$ApiUserImplFromJson(Map<String, dynamic> json) =>
    _$ApiUserImpl(
      uid: json['uid'] as String,
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      email: json['email'] as String,
      password: json['password'] as String?,
      birthday: json['birthday'] == null
          ? null
          : DateTime.parse(json['birthday'] as String),
      ra: json['ra'] as String?,
      questionnaire: json['questionnaire'] as Map<String, dynamic>?,
      questionnaireAnswered: json['questionnaire_answered'] as bool,
      completeProfile: json['complete_profile'] as bool,
      completeRegistration: json['complete_registration'] as bool,
      token: json['token'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ApiUserImplToJson(_$ApiUserImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'password': instance.password,
      'birthday': instance.birthday?.toIso8601String(),
      'ra': instance.ra,
      'questionnaire': instance.questionnaire,
      'questionnaire_answered': instance.questionnaireAnswered,
      'complete_profile': instance.completeProfile,
      'complete_registration': instance.completeRegistration,
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
      userType: (json['tipo_usuario_id'] as num?)?.toInt() ?? 1,
      name: json['nome'] as String? ?? '',
      email: json['email'] as String? ?? '',
      birthday: json['data_nascimento'] as String? ?? '',
      cpf: json['cpf'] as String? ?? '',
      ra: json['ra'] as String? ?? '',
      crp: json['crp'] as String? ?? '',
      phone1: json['fone1'] as String? ?? '',
      phone2: json['fone2'] as String? ?? '',
      address: json['logradouro'] as String? ?? '',
      addressNumber: json['numero'] as String? ?? '',
      addressComplement: json['complemento'] as String? ?? '',
      zipCode: json['cep'] as String? ?? '',
      state: json['estado'] as String? ?? '',
      photoURL: json['imagem_perfil'] as String? ?? '',
      description: json['descricao'] as String? ?? '',
      situation: (json['situacao'] as num?)?.toInt() ?? 1,
      lastLoginDate: DateTime.parse(json['data_ultimo_acesso'] as String),
      createdAt: DateTime.parse(json['data_cadastro'] as String),
      completeProfile: json['perfil_completo'] as bool,
      questionnaireAnswered: json['questionario_respondido'] as bool,
      completeRegistration: json['cadastro_completo'] as bool,
      token: json['token'] as String? ?? '',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$LoggedUserImplToJson(_$LoggedUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uid': instance.uid,
      'tipo_usuario_id': instance.userType,
      'nome': instance.name,
      'email': instance.email,
      'data_nascimento': instance.birthday,
      'cpf': instance.cpf,
      'ra': instance.ra,
      'crp': instance.crp,
      'fone1': instance.phone1,
      'fone2': instance.phone2,
      'logradouro': instance.address,
      'numero': instance.addressNumber,
      'complemento': instance.addressComplement,
      'cep': instance.zipCode,
      'estado': instance.state,
      'imagem_perfil': instance.photoURL,
      'descricao': instance.description,
      'situacao': instance.situation,
      'data_ultimo_acesso': instance.lastLoginDate.toIso8601String(),
      'data_cadastro': instance.createdAt.toIso8601String(),
      'perfil_completo': instance.completeProfile,
      'questionario_respondido': instance.questionnaireAnswered,
      'cadastro_completo': instance.completeRegistration,
      'token': instance.token,
      'runtimeType': instance.$type,
    };
