import 'package:flutter/material.dart';

abstract class Dimens {
  const Dimens();
  static const double smallPadding = 8.0;
  static const double mediumPadding = 16.0;
  static const double largePadding = 24.0;
  static const double extraLargePadding = 32.0;
  static const double paddingHorizontal = 20.0;
  static const double paddingVertical = 24.0;

  double get paddingScreenHorizontal;
  double get paddingScreenVertical;
  double get profilePictureSize;

  EdgeInsets get edgeInsetsScreenHorizontal =>
      EdgeInsets.symmetric(horizontal: paddingScreenHorizontal);
  EdgeInsets get edgeInsetsScreenSymmetric => EdgeInsets.symmetric(
      horizontal: paddingScreenHorizontal, vertical: paddingScreenVertical);

  static final Dimens desktop = _DimensDesktop();
  static final Dimens mobile = _DimensMobile();

  factory Dimens.of(BuildContext context) {
    return MediaQuery.of(context).size.width > 600 ? desktop : mobile;
  }
}

class _DimensMobile extends Dimens {
  const _DimensMobile();

  @override
  final double paddingScreenHorizontal = Dimens.paddingHorizontal;
  @override
  final double paddingScreenVertical = Dimens.paddingVertical;
  @override
  final double profilePictureSize = 64.0;
}

class _DimensDesktop extends Dimens {
  const _DimensDesktop();

  @override
  final double paddingScreenHorizontal = 100.0;
  @override
  final double paddingScreenVertical = 64.0;
  @override
  final double profilePictureSize = 128.0;
}
