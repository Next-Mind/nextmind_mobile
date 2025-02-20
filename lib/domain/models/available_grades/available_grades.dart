import 'package:freezed_annotation/freezed_annotation.dart';

part 'available_grades.freezed.dart';
part 'available_grades.g.dart';

@freezed
class AvailableGrades with _$AvailableGrades {
  factory AvailableGrades({required int index, required int title}) =
      _AvailableGrades;

  factory AvailableGrades.fromJson(Map<String, dynamic> json) =>
      _$AvailableGradesFromJson(json);
}
