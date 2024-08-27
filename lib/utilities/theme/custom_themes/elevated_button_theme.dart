import 'package:flutter/material.dart';

import '../../../core/constants/colors.dart';
import '../../../core/constants/sizes.dart';
import '../../../core/extensions/widget.dart';

class DElevatedButtonTheme {
  DElevatedButtonTheme._();

  /// LIGHT
  static ElevatedButtonThemeData light = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: DColors.primary,
      padding: (h: 50, v: 16).symmetricPadding,
      elevation: DSizes.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(DSizes.buttonRadius),
      ),
    ),
  );

  /// DARK
  static ElevatedButtonThemeData dark = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: DColors.primary,
      padding: (h: 50, v: 16).symmetricPadding,
      elevation: DSizes.zero,
      minimumSize: const Size.fromHeight(50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(DSizes.buttonRadius),
      ),
    ),
  );
}
