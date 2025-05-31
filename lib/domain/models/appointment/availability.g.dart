// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'availability.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AvailabilityImpl _$$AvailabilityImplFromJson(Map<String, dynamic> json) =>
    _$AvailabilityImpl(
      id: (json['id'] as num).toInt(),
      date: json['date'] as String,
      status: (json['status'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$AvailabilityImplToJson(_$AvailabilityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'status': instance.status,
      'runtimeType': instance.$type,
    };

_$EmptyAvailabilityImpl _$$EmptyAvailabilityImplFromJson(
        Map<String, dynamic> json) =>
    _$EmptyAvailabilityImpl(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$EmptyAvailabilityImplToJson(
        _$EmptyAvailabilityImpl instance) =>
    <String, dynamic>{
      'runtimeType': instance.$type,
    };
