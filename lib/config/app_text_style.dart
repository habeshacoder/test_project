import 'package:flutter/material.dart';
import 'package:test_project/gen/colors.gen.dart';
import 'package:test_project/gen/fonts.gen.dart';

class AppTextStyle {
  static const TextStyle bigPlusPlus = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontSize: 50,
    fontWeight: FontWeight.bold,
    color: ColorName.white,
  );
  static const TextStyle bigPlus = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontSize: 26,
    fontWeight: FontWeight.bold,
    color: ColorName.white,
  );
  static const TextStyle big = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: ColorName.white,
  );
  static const TextStyle bigLight = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontSize: 20,
    fontWeight: FontWeight.normal,
    color: ColorName.white,
  );
  static const TextStyle h1Bold = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: ColorName.white,
  );
  static const TextStyle h2Bold = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: ColorName.white,
  );
  static const TextStyle h2Normal = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontSize: 18,
    fontWeight: FontWeight.w200,
    color: ColorName.white,
  );
  static const TextStyle h3Bold = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: ColorName.white,
  );
  static const TextStyle h3Normal = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontSize: 16,
    fontWeight: FontWeight.normal,
    color: ColorName.white,
  );
  static const TextStyle h4Bold = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: ColorName.white,
  );
  static const TextStyle h4Normal = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontSize: 14,
    fontWeight: FontWeight.normal,
    color: ColorName.white,
  );
  static const TextStyle h5Normal = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontSize: 12,
    fontWeight: FontWeight.normal,
    color: ColorName.white,
  );
  static const TextStyle thinSmall = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontSize: 11,
    fontWeight: FontWeight.normal,
    color: ColorName.white,
  );
  static const TextStyle boldSmall = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: ColorName.white,
  );
  static const TextStyle verySmall = TextStyle(
    fontFamily: FontFamily.plusJakartaSans,
    fontSize: 9,
    fontWeight: FontWeight.normal,
    color: ColorName.white,
  );
  static TextStyle customizable({
    required Color color,
    required FontWeight fontWeight,
    required double size,
  }) =>
      TextStyle(
        fontFamily: FontFamily.plusJakartaSans,
        color: color,
        fontSize: 9.0,
        fontWeight: fontWeight,
      );

  static withColor({
    required Color color,
    required TextStyle style,
  }) =>
      style.copyWith(color: color);

  static withSize({
    required TextStyle style,
    required FontWeight weight,
    Color? color,
  }) =>
      style.copyWith(fontWeight: weight, color: color);
}
