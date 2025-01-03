import 'package:flutter/material.dart';
import 'package:test_project/gen/colors.gen.dart';
import 'package:test_project/gen/fonts.gen.dart';

ThemeData lightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: FontFamily.plusJakartaSans,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(
      backgroundColor: ColorName.white,
      surfaceTintColor: ColorName.white,
    ),
  );
}
