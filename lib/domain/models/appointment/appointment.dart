import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment.freezed.dart';
part 'appointment.g.dart';

@freezed
sealed class Appointment with _$Appointment {
  factory Appointment({
    required int id,
    required int availabilityId,
    required int userId,
    required String description,
    required String resolution,
    required String notesPrivate,
    required String attachmentPath,
    required String sessionLink,
    required String status,
    required String cancelledBy,
    required String cancelReason,
    required int durationMinutes,
    required int rating,
    required bool reminderSent,
    required String createdAt,
    required String updatedAt,

  })= _Appointment;



  factory Appointment.fromJson(Map<String, dynamic> json) => _$AppointmentFromJson(json);
}