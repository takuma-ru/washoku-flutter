import 'package:flutter/material.dart';

class CustomColors {
  CustomColors._();
  static const Color white = Color(0xFFFFFEF8);

  static const Color blue = Color(0xFF4D5B9C);

  static const Map<int, Color> accent = <int, Color>{
    500: Color(0xFFF57C00),
  };
}

class CustomColorSchemeSeed {
  CustomColorSchemeSeed._();

  static Color colorSchemeSeed = const Color(0xFF4D5B9C);

  void setCustomColorSchemeSeed(Color color) {
    colorSchemeSeed = color;
  }
}

final ThemeData themeData = ThemeData(
  useMaterial3: true,
  colorSchemeSeed: CustomColorSchemeSeed.colorSchemeSeed,
  brightness: Brightness.light,
  cardColor: CustomColors.white,
  dividerColor: Colors.grey[300],
  backgroundColor: CustomColors.white,
);
