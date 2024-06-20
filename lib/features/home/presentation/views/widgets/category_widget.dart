import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/constants.dart';
import 'package:flutter_application_8/features/home/domain/entities/category_entity.dart';
import 'package:flutter_application_8/core/utilis/theme/text_theme.dart';
import 'package:flutter_application_8/features/home/presentation/views/widgets/icon_button_widget.dart';

Widget categoryWidget(double height, CategoryEntity category) => Column(
      children: [
        customIconButton(
            image: null,
            icon: category.icon!,
            radius: 36,
            backgroundColor: AppConstants.primaryColor),
        SizedBox(
          height: height * 0.015,
        ),
        Text(
          category.title!,
          style: TTextTheme.lightTheme.bodyMedium,
        )
      ],
    );
