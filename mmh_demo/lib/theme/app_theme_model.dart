import 'package:flutter/material.dart';
import 'package:mmh_demo/theme/theme_model.dart';

const _primaryColor = Color.fromARGB(255, 19, 30, 90);
const _textColor = Colors.black;
const _screenBackColor = Colors.white;
const _grey = Color(0xFF3C3C41);
const _midGrey = Color(0xFF969696);
const _lightGrey = Color(0xFFF5F5F5);
const _whiteColor = Color(0xffFFFFFF);
const _indigo = Colors.indigo;

final appThemeModel = ThemeModel(
  primaryAccentColor: _primaryColor,
  screenBackColor: _screenBackColor,
  primaryElementColor: _grey,
  neutralColor: _midGrey,
  lightGray: _lightGrey,
  whiteColor: _whiteColor,
  indigo: _indigo,
  textColor: _textColor,
  heading1: const TextStyle(
      color: _primaryColor,
      fontWeight: ThemeModel.headingTextWeight,
      fontSize: ThemeModel.headingFontSizeM),
  heading2: const TextStyle(
      color: _textColor,
      fontWeight: ThemeModel.titleTextWeightRegular,
      fontSize: ThemeModel.headingFontSizeM),
  heading3: const TextStyle(
      color: _textColor,
      fontWeight: ThemeModel.bodyTextWeightBold,
      fontSize: ThemeModel.headingFontSizeXS),
  heading4: const TextStyle(
      color: _textColor,
      fontWeight: ThemeModel.bodyTextWeightBold,
      fontSize: ThemeModel.headingFontSizeS),
  body1: const TextStyle(
      color: _textColor,
      fontWeight: ThemeModel.bodyTextWeightBold,
      fontSize: ThemeModel.bodyFontSizeS),
  body2: const TextStyle(
      color: _textColor,
      fontWeight: ThemeModel.bodyTextWeightRegular,
      fontSize: ThemeModel.bodyFontSizeS),
  subTitle1: const TextStyle(
      color: _textColor,
      fontWeight: ThemeModel.bodyTextWeightRegular,
      fontSize: ThemeModel.bodyFontSizeXXS),
  subTitle2: const TextStyle(
      color: _textColor,
      fontWeight: ThemeModel.bodyTextWeightBold,
      fontSize: ThemeModel.bodyFontSizeXS),
  buttonTitle: const TextStyle(
      color: _primaryColor,
      fontWeight: ThemeModel.primaryTextButtonWeight,
      fontSize: ThemeModel.bodyFontSizeS),
);
