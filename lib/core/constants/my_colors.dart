import 'package:flutter/material.dart';

class MyColors {
  MyColors._();

  /// Light
  static const Color primary = Color(0xff8E6CEF);
  static const Color onPrimary = Color(0xFFFFFFFF);
  static const Color primaryContainer = Color(0xFFE8DDFF);
  static const Color onPrimaryContainer = Color(0xFFFFFFFF);
  static const Color secondary = Color(0xFF006A60);
  static const Color onSecondary = Color(0xFFFFFFFF);
  static const Color secondaryContainer = Color(0xFF4FFBE6);
  static const Color onSecondaryContainer = Color(0xFF05203c);
  static const Color tertiary = Color(0xFF006874);
  static const Color onTertiary = Color(0xFFFFFFFF);
  static const Color tertiaryContainer = Color(0xFF97F0FF);
  static const Color onTertiaryContainer = Color(0xFF001F24);
  static const Color error = Color(0xFFBA1A1A);
  static const Color errorContainer = Color(0xFFFFDAD6);
  static const Color onError = Color(0xFFFFFFFF);
  static const Color onErrorContainer = Color(0xFF410002);
  static const Color background = Color(0xff1D182A);
  static const Color onBackground = Color(0xFF05203c);
  static const Color outline = Color(0xFF7A757F);
  static const Color onInverseSurface = Color(0xFFEFF1F1);
  static const Color inverseSurface = Color(0xFF2E3132);
  static const Color inversePrimary = Color(0xFFCFBDFF);
  static const Color shadow = Color(0xFF05203c);
  static const Color surfaceTint = Color(0xFF6D23F9);
  static const Color outlineVariant = Color(0xFFCAC4CF);
  static const Color scrim = Color(0xFF05203c);
  static const Color surface = Color(0xFFF8FAFA);
  static const Color onSurface = Color(0xFF05203c);
  static const Color surfaceVariant = Color(0xFFE7E0EC);
  static const Color onSurfaceVariant = Color(0xFF49454E);

  /// Light high contrast

  /// Dark

  /// Dark high contrast

  /// The PrimarySwatch was still set to a color generated by Flutter.
  /// Since you don't have to pass a color but a material color, you need this method.
  /// You could also do this manually for all shades. I found this solution better,
  /// because we can continue to create MaterialColors with it.
  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    final swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}
