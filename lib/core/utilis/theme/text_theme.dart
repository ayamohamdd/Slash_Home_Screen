import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/constants.dart';

class TTextTheme {
  TTextTheme._();
  static TextTheme lightTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
        color: AppConstants.fontColor),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: AppConstants.fontColorMedium),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
        color: AppConstants.fontColor),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: AppConstants.fontColor),
    bodyMedium: const TextStyle().copyWith(
        height: 1.2,
        fontSize: 15.0,
        fontWeight: FontWeight.bold,
        color: AppConstants.fontColor),
    bodySmall: const TextStyle().copyWith(
        fontSize: 15.0,
        fontWeight: FontWeight.w600,
        color: AppConstants.fontColorMedium),
  );

  static TextTheme darkTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: AppConstants.backgroundColor),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 28.0,
        fontWeight: FontWeight.w600,
        color: AppConstants.fontColorMedium),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: AppConstants.backgroundColor),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 15.0,
        fontWeight: FontWeight.w600,
        color: AppConstants.backgroundColor),
    bodySmall: const TextStyle().copyWith(
        fontSize: 15.0,
        fontWeight: FontWeight.w600,
        color: AppConstants.fontColorMedium),
  );
}
