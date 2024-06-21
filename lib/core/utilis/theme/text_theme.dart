import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/constants.dart';

class TTextTheme {
  TTextTheme._();
  static TextTheme lightTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
        color: AppConstants.primaryColor),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: AppConstants.fontColorMedium),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
        color: AppConstants.primaryColor),
    bodyLarge: const TextStyle().copyWith(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: AppConstants.primaryColor),
    bodyMedium: const TextStyle().copyWith(
        height: 1.2,
        fontSize: 15.0,
        fontWeight: FontWeight.bold,
        color: AppConstants.primaryColor),
    bodySmall: const TextStyle().copyWith(
        fontSize: 15.0,
        fontWeight: FontWeight.w600,
        color: AppConstants.fontColorMedium),
  );
}
