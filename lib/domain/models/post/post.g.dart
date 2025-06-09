// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostModelImpl _$$PostModelImplFromJson(Map<String, dynamic> json) =>
    _$PostModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostModelImplToJson(_$PostModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'runtimeType': instance.$type,
    };

_$PostDetailedModelImpl _$$PostDetailedModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostDetailedModelImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      content: json['content'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$PostDetailedModelImplToJson(
        _$PostDetailedModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'content': instance.content,
      'runtimeType': instance.$type,
    };
