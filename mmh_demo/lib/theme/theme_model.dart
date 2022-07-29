import 'package:flutter/cupertino.dart';

class ThemeModel {
  final Color primaryAccentColor;
  final Color screenBackColor;
  final Color primaryElementColor;
  final Color neutralColor;
  final Color lightGray;
  final Color whiteColor;
  final Color indigo;
  final Color textColor;
  // Padding
  final paddingXS = 4.0;
  final paddingS = 8.0;
  final paddingM = 12.0;
  final paddingL = 16.0;
  final paddingXL = 20.0;

  // Margin
  final marginXS = 4.0;
  final marginS = 8.0;
  final marginM = 12.0;
  final marginL = 16.0;
  final marginXL = 20.0;
  final marginXXL = 24.0;
  final marginXXXL = 40.0;

  // Size Units
  final sizeUnitXXS = 3.0;
  final sizeUnitXS = 6.0;
  final sizeUnitS = 8.0;
  final sizeUnitM = 12.0;
  final sizeUnitL = 16.0;
  final sizeUnitXL = 20.0;
  final sizeUnitXXL = 24.0;
  final sizeUnitXXXL = 40.0;

  //Font Size
  static const headingFontSizeXS = 16.0;
  static const headingFontSizeS = 24.0;
  static const headingFontSizeM = 36.0;
  static const headingFontSizeL = 56.0;

  static const bodyFontSizeXXS = 8.0;
  static const bodyFontSizeXS = 12.0;
  static const bodyFontSizeS = 14.0;
  static const bodyFontSizeM = 16.0;
  static const bodyFontSizeL = 18.0;

  //Border

  final buttonBorderWidth = 2.0;

  // FontWeight
  static const headingTextWeight = FontWeight.w600;
  static const titleTextWeightRegular = FontWeight.w300;
  static const bodyTextWeightRegular = FontWeight.w400;
  static const bodyTextWeightBold = FontWeight.w600;
  static const primaryTextButtonWeight = FontWeight.w700;

  //TextStyle
  final TextStyle heading1;
  final TextStyle heading2;
  final TextStyle heading3;
  final TextStyle heading4;
  final TextStyle body1;
  final TextStyle body2;
  final TextStyle subTitle1;
  final TextStyle subTitle2;
  final TextStyle buttonTitle;

  ThemeModel(
      {required this.primaryAccentColor,
      required this.screenBackColor,
      required this.primaryElementColor,
      required this.neutralColor,
      required this.lightGray,
      required this.whiteColor,
      required this.textColor,
      required this.indigo,
      required this.heading1,
      required this.heading2,
      required this.heading3,
      required this.heading4,
      required this.body1,
      required this.body2,
      required this.subTitle1,
      required this.subTitle2,
      required this.buttonTitle});
}
