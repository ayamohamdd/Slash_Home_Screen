import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/constants.dart';
import 'package:flutter_application_8/core/utilis/theme/text_theme.dart';

class TApptheme {
  TApptheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: AppConstants.font,
    brightness: Brightness.light,
    primaryColor: AppConstants.primaryColor,
    scaffoldBackgroundColor: AppConstants.backgroundColor,
    textTheme: TTextTheme.lightTheme,
  );
  // static ThemeData darkTheme = ThemeData(
  //   useMaterial3: true,
  //   fontFamily: AppConstants.font,
  //   brightness: Brightness.dark,
  //   primaryColor: AppConstants.primaryColor,
  //   scaffoldBackgroundColor: AppConstants.fontColor,
  //   textTheme: TTextTheme.darkTheme,
  //   elevatedButtonTheme: TElevatedButtonTheme.darkElevatedButtonThemeData,
  //   appBarTheme: TAppBarTheme.darkAppBartheme

  // );
}
