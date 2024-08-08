import 'package:madrasa_task/core/utilities/app_colors.dart';
import 'package:madrasa_task/core/utilities/shared_pref_helper.dart';

import 'package:flutter/material.dart';


abstract class CustomTextStyle {
  final double fontSize;
  final Color color;
  final bool isMarai;
  final bool isUnderLine;
  final TextDecoration textDecoration;
  final Color decorationColor;

  CustomTextStyle(
      {this.fontSize = 15.0,
      this.color = blackColor,
      this.isMarai = false,
      this.isUnderLine = false,
      this.decorationColor = blackColor})
      : textDecoration =
            isUnderLine ? TextDecoration.underline : TextDecoration.none;

  TextStyle englishFont(FontWeight fontWeight) {
    return TextStyle(
        fontFamily: 'sfFont',
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize,
        decorationColor: decorationColor,
        decoration: textDecoration);
  }

  TextStyle arabicFont(FontWeight fontWeight, bool isMarai) {
    return TextStyle(
        fontFamily: isMarai ? 'almarai' : 'ArbFONTS',
        color: color,
        fontWeight: fontWeight,
        fontSize: fontSize - 2,
        decorationColor: decorationColor,
        decoration: textDecoration);
  }

  bool get isEnglish => SharedPRefHelper().getLanguage == 'en' ? true : false;

  TextStyle getStyle();
}

class LightStyle extends CustomTextStyle {
  @override
  TextStyle getStyle() => isEnglish
      ? englishFont(FontWeight.w300)
      : arabicFont(FontWeight.w300, isMarai);

  LightStyle(
      {double fontSize = 15,
      Color color = blackColor,
      Color decorationColor = blackColor,
      bool isMarai = false,
      bool isUnderLine = false})
      : super(
            color: color,
            fontSize: fontSize,
            isMarai: isMarai,
            isUnderLine: isUnderLine,
            decorationColor: decorationColor);
}

class RegularStyle extends CustomTextStyle {
  @override
  TextStyle getStyle() => isEnglish
      ? englishFont(FontWeight.w400)
      : arabicFont(FontWeight.w400, isMarai);

  RegularStyle(
      {double fontSize = 15,
      Color color = blackColor,
      Color decorationColor = blackColor,
      bool isMarai = false,
      bool isUnderLine = false})
      : super(
            color: color,
            fontSize: fontSize,
            isMarai: isMarai,
            isUnderLine: isUnderLine,
            decorationColor: decorationColor);
}

class MediumStyle extends CustomTextStyle {
  @override
  TextStyle getStyle() => isEnglish
      ? englishFont(FontWeight.w500)
      : arabicFont(FontWeight.w500, isMarai);

  MediumStyle(
      {double fontSize = 15,
      Color color = blackColor,
      Color decorationColor = blackColor,
      bool isMarai = false,
      bool isUnderLine = false})
      : super(
            color: color,
            fontSize: fontSize,
            isMarai: isMarai,
            isUnderLine: isUnderLine,
            decorationColor: decorationColor);
}

class SemiBoldStyle extends CustomTextStyle {
  @override
  TextStyle getStyle() => isEnglish
      ? englishFont(FontWeight.w600)
      : arabicFont(FontWeight.w600, isMarai);

  SemiBoldStyle(
      {double fontSize = 15,
      Color color = blackColor,
      Color decorationColor = blackColor,
      bool isMarai = false,
      bool isUnderLine = false})
      : super(
            color: color,
            fontSize: fontSize,
            isMarai: isMarai,
            isUnderLine: isUnderLine,
            decorationColor: decorationColor);
}

class BoldStyle extends CustomTextStyle {
  @override
  TextStyle getStyle() => isEnglish
      ? englishFont(FontWeight.w600)
      : arabicFont(FontWeight.w600, isMarai);

  BoldStyle(
      {double fontSize = 15,
      Color color = blackColor,
      Color decorationColor = blackColor,
      bool isMarai = false,
      bool isUnderLine = false})
      : super(
            color: color,
            fontSize: fontSize,
            isMarai: isMarai,
            isUnderLine: isUnderLine,
            decorationColor: decorationColor);
}
