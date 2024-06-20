import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget customIconButton(
        {required IconData? icon,
        required double? radius,
        required String? image,
        Color? color,
        required Color? backgroundColor,
        double? size}) =>
    CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor,
      child: icon == null
          ? Image(image: AssetImage(image!))
          : FaIcon(
              icon,
              size: size,
              color: AppConstants.backgroundColor,
            ),
    );
