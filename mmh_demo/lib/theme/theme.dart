import 'package:flutter/material.dart';
import 'package:mmh_demo/theme/theme_model.dart';

import 'app_theme_model.dart';

final ThemeModel activeTheme = appThemeModel;

final ThemeData appThemeData = ThemeData(
  primaryColor: activeTheme.primaryAccentColor,
  scaffoldBackgroundColor: activeTheme.screenBackColor,
  hintColor: activeTheme.neutralColor,
  textSelectionTheme:
      TextSelectionThemeData(cursorColor: activeTheme.neutralColor),
  colorScheme: ColorScheme.fromSeed(
      primary: activeTheme.primaryAccentColor,
      seedColor: activeTheme.primaryAccentColor),

  textTheme: TextTheme(
      headline1: activeTheme.heading1,
      headline2: activeTheme.heading2,
      headline3: activeTheme.heading3,
      headline4: activeTheme.heading4,
      bodyText1: activeTheme.body1,
      bodyText2: activeTheme.body2,
      subtitle1: activeTheme.subTitle1,
      subtitle2: activeTheme.subTitle2),
  outlinedButtonTheme: OutlinedButtonThemeData(
      style: ButtonStyle(
          textStyle:
              MaterialStateProperty.all<TextStyle>(activeTheme.buttonTitle),
          foregroundColor:
              MaterialStateProperty.all<Color>(activeTheme.primaryAccentColor),
          backgroundColor:
              MaterialStateProperty.all<Color>(activeTheme.screenBackColor),
          padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(activeTheme.paddingXL)),
          minimumSize: MaterialStateProperty.all(
              Size(double.infinity, activeTheme.sizeUnitXXXL)),
          side: MaterialStateProperty.all(BorderSide(
              color: activeTheme.primaryAccentColor,
              width: activeTheme.buttonBorderWidth)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(activeTheme.sizeUnitXS))))),
  elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
          textStyle:
              MaterialStateProperty.all<TextStyle>(activeTheme.buttonTitle),
          foregroundColor:
              MaterialStateProperty.all<Color>(activeTheme.screenBackColor),
          backgroundColor:
              MaterialStateProperty.all<Color>(activeTheme.primaryAccentColor),
          padding: MaterialStateProperty.all<EdgeInsets>(
              EdgeInsets.all(activeTheme.paddingL)),
          minimumSize: MaterialStateProperty.all(
              Size(double.infinity, activeTheme.sizeUnitXXXL)),
          side: MaterialStateProperty.all(BorderSide(
              color: activeTheme.primaryAccentColor,
              width: activeTheme.buttonBorderWidth)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(activeTheme.sizeUnitXS))))),

  // Input
  inputDecorationTheme: InputDecorationTheme(
      fillColor: activeTheme.lightGray,
      contentPadding: EdgeInsets.symmetric(
        horizontal: activeTheme.sizeUnitM,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          width: 0.5,
          style: BorderStyle.solid,
          color: activeTheme.lightGray,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          width: 0.5,
          style: BorderStyle.solid,
          color: activeTheme.neutralColor,
        ),
      ),
      floatingLabelStyle: activeTheme.body1,
      hintStyle: activeTheme.body2.copyWith(color: activeTheme.neutralColor),
      labelStyle: activeTheme.body2),

  checkboxTheme: CheckboxThemeData(
      checkColor: MaterialStateProperty.all(activeTheme.whiteColor),
      fillColor: MaterialStateProperty.all(activeTheme.primaryAccentColor)),
  appBarTheme: AppBarTheme(
      backgroundColor: activeTheme.screenBackColor,
      titleTextStyle: activeTheme.body1,
      elevation: 0.0,
      titleSpacing: 0,
      actionsIconTheme: IconThemeData(color: activeTheme.textColor),
      iconTheme: IconThemeData(color: activeTheme.textColor)),
  iconTheme: IconThemeData(
    color: activeTheme.textColor,
  ),
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      backgroundColor: activeTheme.screenBackColor,
      selectedItemColor: activeTheme.primaryAccentColor,
      unselectedItemColor: activeTheme.neutralColor,
      selectedIconTheme: IconThemeData(color: activeTheme.primaryAccentColor),
      selectedLabelStyle:
          activeTheme.subTitle1.copyWith(color: activeTheme.primaryAccentColor),
      unselectedIconTheme: IconThemeData(color: activeTheme.neutralColor),
      unselectedLabelStyle: activeTheme.subTitle1),
);
