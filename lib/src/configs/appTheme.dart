// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:wellness_republic/src/configs/appColors.dart';

class AppTheme {
  static final appTheme = ThemeData(
    scaffoldBackgroundColor: scaffoldBackgroundColorDeep,
    primaryColor: PRIMARY_COLOR_DEEP,
    accentColor: PRIMARY_ACCENT_COLOR_LIGHT,
    backgroundColor: SCAFFOLD_BACKGROUND_COLOR_LIGHT,
    colorScheme: ColorScheme.light(),
    iconTheme: IconThemeData(color: PRIMARY_COLOR_LIGHT, opacity: 0.8),
    inputDecorationTheme: InputDecorationTheme(
      prefixStyle: TextStyle(color: PRIMARY_COLOR_LIGHT),
      focusColor: PRIMARY_COLOR_LIGHT,
      border: InputBorder.none,
      hoverColor: PRIMARY_COLOR_LIGHT,
      hintStyle: TextStyle(fontSize: 16),
    ),
    appBarTheme: AppBarTheme(
      elevation: 2,
      backgroundColor: scaffoldBackgroundColorDeep,
      titleTextStyle:
          TextStyle(color: PRIMARY_COLOR_DEEP, fontSize: 16, letterSpacing: 2),
      iconTheme: IconThemeData(
        color: PRIMARY_COLOR_DEEP,
      ),
    ),
  );
}
