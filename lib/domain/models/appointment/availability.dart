import 'package:freezed_annotation/freezed_annotation.dart';

part 'availability.freezed.dart';
part 'availability.g.dart';

@freezed
sealed class Availability with _$Availability {
  factory Availability ({
    required int id,
    required String date,
    required int status
  }) = _Availability;

  factory Availability.empty()= EmptyAvailability;
  
  factory Availability.fromJson(Map<String, dynamic> json) => _$AvailabilityFromJson(json);
}