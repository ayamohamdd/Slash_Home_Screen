import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/constants.dart';
import 'package:flutter_application_8/core/utilis/theme/text_theme.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Slash.',
          style: TTextTheme.lightTheme.headlineLarge,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Icon(Icons.location_on),
            const SizedBox(
              width: 3,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nasr City',
                  style: TTextTheme.lightTheme.headlineSmall,
                ),
                Text(
                  'Cairo',
                  style: TTextTheme.lightTheme.bodyMedium,
                )
              ],
            ),
            const Icon(Icons.keyboard_arrow_down),
          ],
        ),
        Stack(
          children: [
            Icon(
              Icons.notifications_outlined,
              size: 28,
              color: AppConstants.primaryColor,
            ),
            Positioned(
                top: 5.5,
                left: 15.5,
                child: CircleAvatar(
                  radius: 4,
                  backgroundColor: AppConstants.errorColor,
                )),
          ],
        )
      ],
    );
  }
}
