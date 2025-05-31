// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentImpl _$$AppointmentImplFromJson(Map<String, dynamic> json) =>
    _$AppointmentImpl(
      id: (json['id'] as num).toInt(),
      availabilityId: (json['availabilityId'] as num).toInt(),
      userId: (json['userId'] as num).toInt(),
      description: json['description'] as String,
      resolution: json['resolution'] as String,
      notesPrivate: json['notesPrivate'] as String,
      attachmentPath: json['attachmentPath'] as String,
      sessionLink: json['sessionLink'] as String,
      status: json['status'] as String,
      cancelledBy: json['cancelledBy'] as String,
      cancelReason: json['cancelReason'] as String,
      durationMinutes: (json['durationMinutes'] as num).toInt(),
      rating: (json['rating'] as num).toInt(),
      reminderSent: json['reminderSent'] as bool,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
    );

Map<String, dynamic> _$$AppointmentImplToJson(_$AppointmentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'availabilityId': instance.availabilityId,
      'userId': instance.userId,
      'description': instance.description,
      'resolution': instance.resolution,
      'notesPrivate': instance.notesPrivate,
      'attachmentPath': instance.attachmentPath,
      'sessionLink': instance.sessionLink,
      'status': instance.status,
      'cancelledBy': instance.cancelledBy,
      'cancelReason': instance.cancelReason,
      'durationMinutes': instance.durationMinutes,
      'rating': instance.rating,
      'reminderSent': instance.reminderSent,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
