import 'package:flutter/material.dart';
import 'package:flutter_application_8/core/utilis/theme/text_theme.dart';

class NavBarWidget extends StatelessWidget {
  const NavBarWidget({super.key, required this.height, required this.width});
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Home",
          style: TTextTheme.lightTheme.bodyLarge,
        ),
        SizedBox(
          width: width * 0.02,
        ),
        Text(
          "Favorits",
          style: TTextTheme.lightTheme.bodyLarge,
        ),
        SizedBox(
          width: width * 0.02,
        ),
        Text(
          "Carts",
          style: TTextTheme.lightTheme.bodyLarge,
        ),
        SizedBox(
          width: width * 0.02,
        ),
        Text(
          "Profile",
          style: TTextTheme.lightTheme.bodyLarge,
        ),
      ],
    );
  }
}
