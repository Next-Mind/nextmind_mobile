import 'package:flutter/material.dart';

/// Classe base para definir dimensões responsivas em diferentes dispositivos.
abstract class Dimens {
  const Dimens();

  // Padding fixo e utilitário
  static const double smallPadding = 8.0;
  static const double mediumPadding = 16.0;
  static const double largePadding = 24.0;
  static const double extraLargePadding = 32.0;
  static const double defaultPaddingHorizontal = 20.0;
  static const double defaultPaddingVertical = 24.0;

  // Dimensões que variam por tipo de tela
  double get paddingScreenHorizontal;
  double get paddingScreenVertical;
  double get profilePictureSize;
  double get iconSize;
  double get buttonHeight;
  double get cardElevation;

  // Altura das ondas de fundo
  double get waveBackgroundHeight;
  double get waveBackgroundHeightMid;
  double get waveBackgroundHeightLow;

  // Atalhos úteis
  EdgeInsets get edgeInsetsScreenHorizontal =>
      EdgeInsets.symmetric(horizontal: paddingScreenHorizontal);

  EdgeInsets get edgeInsetsScreenSymmetric => EdgeInsets.symmetric(
        horizontal: paddingScreenHorizontal,
        vertical: paddingScreenVertical,
      );

  // Breakpoints e fábrica
  static final Dimens mobile = _DimensMobile();
  static final Dimens tablet = _DimensTablet();
  static final Dimens desktop = _DimensDesktop();

  factory Dimens.of(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    if (width >= 1024) return desktop;
    if (width >= 600) return tablet;
    return mobile;
  }
}

/// Dimensões para dispositivos móveis
class _DimensMobile extends Dimens {
  const _DimensMobile();

  @override
  final double paddingScreenHorizontal = Dimens.defaultPaddingHorizontal;
  @override
  final double paddingScreenVertical = Dimens.defaultPaddingVertical;
  @override
  final double profilePictureSize = 64.0;
  @override
  final double iconSize = 24.0;
  @override
  final double buttonHeight = 48.0;
  @override
  final double cardElevation = 2.0;
  @override
  final double waveBackgroundHeight = 400.0;
  @override
  final double waveBackgroundHeightMid = 380.0;
  @override
  final double waveBackgroundHeightLow = 360.0;
}

/// Dimensões para tablets
class _DimensTablet extends Dimens {
  const _DimensTablet();

  @override
  final double paddingScreenHorizontal = 60.0;
  @override
  final double paddingScreenVertical = 40.0;
  @override
  final double profilePictureSize = 96.0;
  @override
  final double iconSize = 32.0;
  @override
  final double buttonHeight = 56.0;
  @override
  final double cardElevation = 4.0;
  @override
  final double waveBackgroundHeight = 420.0;
  @override
  final double waveBackgroundHeightMid = 400.0;
  @override
  final double waveBackgroundHeightLow = 380.0;
}

/// Dimensões para desktops
class _DimensDesktop extends Dimens {
  const _DimensDesktop();

  @override
  final double paddingScreenHorizontal = 100.0;
  @override
  final double paddingScreenVertical = 64.0;
  @override
  final double profilePictureSize = 128.0;
  @override
  final double iconSize = 40.0;
  @override
  final double buttonHeight = 64.0;
  @override
  final double cardElevation = 6.0;
  @override
  final double waveBackgroundHeight = 480.0;
  @override
  final double waveBackgroundHeightMid = 460.0;
  @override
  final double waveBackgroundHeightLow = 440.0;
}
