import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff3CA668),
      surfaceTint: Color(0xff2e6a44),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffb1f1c1),
      onPrimaryContainer: Color(0xff11512e),
      secondary: Color(0xff4f6353),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd2e8d4),
      onSecondaryContainer: Color(0xff384b3c),
      tertiary: Color(0xff3a646f),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffbeeaf6),
      onTertiaryContainer: Color(0xff214c57),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff6fbf3),
      onSurface: Color(0xff181d18),
      onSurfaceVariant: Color(0xff414942),
      outline: Color(0xff717971),
      outlineVariant: Color(0xffc0c9bf),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2c322d),
      inversePrimary: Color(0xff96d5a7),
      primaryFixed: Color(0xffb1f1c1),
      onPrimaryFixed: Color(0xff00210e),
      primaryFixedDim: Color(0xff96d5a7),
      onPrimaryFixedVariant: Color(0xff11512e),
      secondaryFixed: Color(0xffd2e8d4),
      onSecondaryFixed: Color(0xff0d1f13),
      secondaryFixedDim: Color(0xffb6ccb9),
      onSecondaryFixedVariant: Color(0xff384b3c),
      tertiaryFixed: Color(0xffbeeaf6),
      onTertiaryFixed: Color(0xff001f26),
      tertiaryFixedDim: Color(0xffa2ceda),
      onTertiaryFixedVariant: Color(0xff214c57),
      surfaceDim: Color(0xffd6dbd4),
      surfaceBright: Color(0xfff6fbf3),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff0f5ed),
      surfaceContainer: Color(0xffeaefe8),
      surfaceContainerHigh: Color(0xffe5eae2),
      surfaceContainerHighest: Color(0xffdfe4dc),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff96d5a7),
      surfaceTint: Color(0xff96d5a7),
      onPrimary: Color(0xff00391c),
      primaryContainer: Color(0xff11512e),
      onPrimaryContainer: Color(0xffb1f1c1),
      secondary: Color(0xffb6ccb9),
      onSecondary: Color(0xff223527),
      secondaryContainer: Color(0xff384b3c),
      onSecondaryContainer: Color(0xffd2e8d4),
      tertiary: Color(0xffa2ceda),
      onTertiary: Color(0xff023640),
      tertiaryContainer: Color(0xff214c57),
      onTertiaryContainer: Color(0xffbeeaf6),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff101510),
      onSurface: Color(0xffdfe4dc),
      onSurfaceVariant: Color(0xffc0c9bf),
      outline: Color(0xff8b938a),
      outlineVariant: Color(0xff414942),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdfe4dc),
      inversePrimary: Color(0xff2e6a44),
      primaryFixed: Color(0xffb1f1c1),
      onPrimaryFixed: Color(0xff00210e),
      primaryFixedDim: Color(0xff96d5a7),
      onPrimaryFixedVariant: Color(0xff11512e),
      secondaryFixed: Color(0xffd2e8d4),
      onSecondaryFixed: Color(0xff0d1f13),
      secondaryFixedDim: Color(0xffb6ccb9),
      onSecondaryFixedVariant: Color(0xff384b3c),
      tertiaryFixed: Color(0xffbeeaf6),
      onTertiaryFixed: Color(0xff001f26),
      tertiaryFixedDim: Color(0xffa2ceda),
      onTertiaryFixedVariant: Color(0xff214c57),
      surfaceDim: Color(0xff101510),
      surfaceBright: Color(0xff353a35),
      surfaceContainerLowest: Color(0xff0a0f0b),
      surfaceContainerLow: Color(0xff181d18),
      surfaceContainer: Color(0xff1c211c),
      surfaceContainerHigh: Color(0xff262b27),
      surfaceContainerHighest: Color(0xff313631),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  ElevatedButtonThemeData elevatedButtonThemeData(ColorScheme colorScheme) {
    return ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(colorScheme.primary),
        foregroundColor: WidgetStatePropertyAll(colorScheme.onPrimary),
      ),
    );
  }

  InputDecorationTheme inputDecorationTheme(ColorScheme colorScheme) {
    return InputDecorationTheme(
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(32),
      ),
      filled: true,
      fillColor: colorScheme.surfaceContainerHighest,
    );
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
      useMaterial3: true,
      brightness: colorScheme.brightness,
      colorScheme: colorScheme,
      textTheme: textTheme.apply(
        displayColor: colorScheme.onSurface,
        bodyColor: colorScheme.onSurface,
      ),
      scaffoldBackgroundColor: colorScheme.surface,
      canvasColor: colorScheme.surface,
      elevatedButtonTheme: elevatedButtonThemeData(colorScheme),
      inputDecorationTheme: inputDecorationTheme(colorScheme));
}
