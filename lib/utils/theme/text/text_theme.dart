import 'package:baked_bliss/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

abstract class AppTextTheme {
  static TextTheme _fillTextTheme(String family) {
    final baseTextStyle = TextStyle(fontFamily: family);

    return TextTheme(
      displayLarge:
          baseTextStyle.copyWith(fontSize: 34, fontWeight: FontWeight.bold),
      displayMedium:
          baseTextStyle.copyWith(fontSize: 28, fontWeight: FontWeight.bold),
      displaySmall:
          baseTextStyle.copyWith(fontSize: 24, fontWeight: FontWeight.bold),
      headlineLarge:
          baseTextStyle.copyWith(fontSize: 22, fontWeight: FontWeight.bold),
      headlineMedium:
          baseTextStyle.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
      headlineSmall:
          baseTextStyle.copyWith(fontSize: 18, fontWeight: FontWeight.bold),
      titleLarge:
          baseTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.bold),
      titleMedium:
          baseTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.normal),
      titleSmall:
          baseTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.normal),
      bodyLarge:
          baseTextStyle.copyWith(fontSize: 16, fontWeight: FontWeight.normal),
      bodyMedium:
          baseTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.normal),
      bodySmall:
          baseTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.normal),
      labelLarge:
          baseTextStyle.copyWith(fontSize: 14, fontWeight: FontWeight.bold),
      labelMedium:
          baseTextStyle.copyWith(fontSize: 12, fontWeight: FontWeight.normal),
      labelSmall:
          baseTextStyle.copyWith(fontSize: 10, fontWeight: FontWeight.normal),
    );
  }

  static TextTheme get mulishTextTheme => _fillTextTheme(FontFamily.mulish);
}
