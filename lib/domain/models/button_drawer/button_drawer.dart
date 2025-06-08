// ignore_for_file: invalid_annotation_target

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'button_drawer.freezed.dart';
part 'button_drawer.g.dart';

@freezed
sealed class ButtonDrawer with _$ButtonDrawer {
  const factory ButtonDrawer({
    required String title,
    required String iconPath,
    String? routeName,
    @JsonKey(includeFromJson: false, includeToJson: false)
    VoidCallback? onPressed,
  }) = _ButtonDrawer;

  factory ButtonDrawer.fromJson(Map<String, dynamic> json) =>
      _$ButtonDrawerFromJson(json);

  const factory ButtonDrawer.empty() = ButtonDrawerEmpty;
}
