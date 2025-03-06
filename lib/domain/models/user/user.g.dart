// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      json['name'] as String? ?? 'Undefined',
      json['email'] as String? ?? 'Undefined',
      json['photoURL'] as String? ?? 'Undefined',
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'photoURL': instance.photoURL,
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
