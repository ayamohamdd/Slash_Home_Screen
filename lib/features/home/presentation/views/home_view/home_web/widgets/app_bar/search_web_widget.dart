import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/constants.dart';
import 'package:flutter_application_8/core/utilis/theme/text_theme.dart';

class SearchWebWidget extends StatelessWidget {
  const SearchWebWidget({super.key, required this.width, required this.height});
  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: AppConstants.background2Color),
      width: width * 0.2,
      height: height * 0.06,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Row(
          children: [
            Expanded(
              child: Text(
                'Search here..',
                style: TTextTheme.lightTheme.bodyMedium,
              ),
            ),
            SizedBox(
              width: width * 0.02,
            ),
            Icon(
              size: 18,
              Icons.search_outlined,
              color: AppConstants.primaryColor,
            ),
          ],
        ),
      ),
    );
  }
}
