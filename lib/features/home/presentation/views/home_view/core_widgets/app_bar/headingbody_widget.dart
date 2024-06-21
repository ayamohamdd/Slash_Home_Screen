import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/constants.dart';
import 'package:flutter_application_8/core/utilis/theme/text_theme.dart';

class HeadingBodyWidget extends StatelessWidget {
  const HeadingBodyWidget(
      {super.key,
      required this.headingText,
      required this.width,
      required this.headingStyle});
  final String headingText;
  final double width;

  final TextStyle headingStyle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: width * 0.07),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: Text(headingText, style: headingStyle)),
          Text(
            'See all',
            style: TTextTheme.lightTheme.bodySmall,
          ),
          SizedBox(
            width: width * 0.05,
          ),
          Container(
              width: width * 0.08,
              height: width * 0.08,
              decoration: BoxDecoration(
                  color: AppConstants.background2Color,
                  borderRadius: BorderRadius.circular(5)),
              child: const Icon(Icons.keyboard_arrow_right_outlined))
        ],
      ),
    );
  }
}
