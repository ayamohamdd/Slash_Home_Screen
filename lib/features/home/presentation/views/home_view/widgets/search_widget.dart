import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/constants.dart';
import 'package:flutter_application_8/core/utilis/theme/text_theme.dart';

class SearchWidget extends StatelessWidget {
   SearchWidget({super.key,required this.width,required this.height});
  double width;
  double height;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppConstants.background2Color),
          width: width * 0.68,
          height: height * 0.06,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.search_outlined,
                  color: AppConstants.conColor,
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Text(
                  'Search here..',
                  style: TTextTheme.lightTheme.bodySmall,
                )
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: AppConstants.background2Color),
          width: width * 0.15,
          height: height * 0.06,
          child: const Icon(Icons.tune_rounded),
        )
      ],
    );
    
  }
}

