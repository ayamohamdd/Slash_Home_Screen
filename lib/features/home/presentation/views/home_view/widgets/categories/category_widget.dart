import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/constants.dart';
import 'package:flutter_application_8/features/home/domain/entities/category_entity.dart';
import 'package:flutter_application_8/core/utilis/theme/text_theme.dart';
import 'package:flutter_application_8/core/utilis/theme/icon_button_widget.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget(
      {super.key,
      required this.height,
      required this.category,
      required this.radius,
      required this.titleStyle,
      required this.iconSize

      });
  double height;
  CategoryEntity category;
  double radius;
  TextStyle titleStyle;
  double iconSize;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        customIconButton(
          size: iconSize,
            image: null,
            icon: category.icon!,
            radius: radius,
            backgroundColor: AppConstants.primaryColor),
        SizedBox(
          height: height * 0.015,
        ),
        Text(
          category.title!,
          style: titleStyle,
        )
      ],
    );
  }
}
