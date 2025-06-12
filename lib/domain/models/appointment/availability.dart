import 'package:freezed_annotation/freezed_annotation.dart';

part 'availability.freezed.dart';
part 'availability.g.dart';

@freezed
class Availability with _$Availability {
  factory Availability({
    required int id,
    required String date,
    required int status,
  }) = _Availability;

  factory Availability.empty() => Availability(id: 0, date: '', status: 0);

  factory Availability.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityFromJson(json);
}
