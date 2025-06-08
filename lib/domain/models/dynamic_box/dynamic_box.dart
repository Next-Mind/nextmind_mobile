import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_box.freezed.dart';
part 'dynamic_box.g.dart';

@freezed
sealed class DynamicBox with _$DynamicBox {
  const factory DynamicBox({
    required String dynamicBoxTitle,
    required String dynamicBoxContent,
  }) = _DynamicBox;

  factory DynamicBox.fromJson(Map<String, dynamic> json) =>
      _$DynamicBoxFromJson(json);
}
