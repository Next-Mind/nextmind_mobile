// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'button_drawer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ButtonDrawerImpl _$$ButtonDrawerImplFromJson(Map<String, dynamic> json) =>
    _$ButtonDrawerImpl(
      title: json['title'] as String,
      iconPath: json['iconPath'] as String,
      routeName: json['routeName'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ButtonDrawerImplToJson(_$ButtonDrawerImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'iconPath': instance.iconPath,
      'routeName': instance.routeName,
      'runtimeType': instance.$type,
    };

_$ButtonDrawerEmptyImpl _$$ButtonDrawerEmptyImplFromJson(
        Map<String, dynamic> json) =>
    _$ButtonDrawerEmptyImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$ButtonDrawerEmptyImplToJson(
        _$ButtonDrawerEmptyImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
