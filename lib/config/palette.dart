import 'package:flutter/material.dart';

class Palette {
  // default[0] - main theme(Light theme) [1] - Dark theme

  static const List<Color> accentColor = [Color(0x99536CE3)];
  static const List<Color> cardColor = [Color(0xFFDEE5F7)];
  static const List<Color> backgroundColor = [Color(0x223FF3FE)];
  static const List<Color> secondBackgroundColor = [Color(0xFFFCFCFC)];
  static const List<Color> titleTextColor = [Color(0xFF595C6D)];
  static const List<Color> commonTextColor = [Color(0xFF8B8EB5)];
  static const List<Color> detailsTextColor = [Color(0xFFB3B5D2)];
  static const List<Color> white = [Color(0xFFFFFFFF)];
  static List<LinearGradient> gradientLogo = [
    LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xff536CE3),
        // Color(0xff009FFF),
        Colors.yellow[600],
      ],
    ),
  ];
  static List<RadialGradient> gradientBackground = [
    RadialGradient(
      center: Alignment(0.65, -0.65),
      radius: 0.45,
      colors: [Color(0xFFC7CFE4), Colors.white],

    ),
  ];
}
