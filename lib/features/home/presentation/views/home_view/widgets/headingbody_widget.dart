import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/constants.dart';
import 'package:flutter_application_8/core/utilis/theme/text_theme.dart';

class HeadingBodyWidget extends StatelessWidget {
  HeadingBodyWidget(
      {super.key, required this.headingText, required this.width});
  String headingText;
  double width;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: width * 0.07),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
              child: Text(headingText, style: TTextTheme.lightTheme.bodyLarge)),
          Text(
            'See all',
            style: TTextTheme.lightTheme.bodySmall,
          ),
          const SizedBox(
            width: 10,
          ),
          Container(
              width: 25,
              height: 25,
              decoration: BoxDecoration(
                  color: AppConstants.background2Color,
                  borderRadius: BorderRadius.circular(5)),
              child: const Icon(Icons.keyboard_arrow_right_outlined))
        ],
      ),
    );
  }
}
