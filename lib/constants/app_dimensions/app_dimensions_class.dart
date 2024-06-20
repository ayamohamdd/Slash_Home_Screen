import 'package:flutter/material.dart';

class AppDimension {
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;
  static void initDimensions(BuildContext context) {
    screenWidth = MediaQuery.of(context).size.width;
    screenHeight = MediaQuery.of(context).size.height;
  }
}
