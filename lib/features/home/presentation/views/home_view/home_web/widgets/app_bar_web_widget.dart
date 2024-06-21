import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_8/constants/constants.dart';
import 'package:flutter_application_8/core/utilis/theme/text_theme.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/home_web/widgets/nav_bar_items.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/home_web/widgets/search_web_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/widgets/search_widget.dart';

class AppBarWebWidget extends StatelessWidget {
  AppBarWebWidget({super.key, required this.width, required this.height});
  double width;
  double height;
  @override
  Widget build(BuildContext context) {
    print(width);
    return SizedBox(
      width: width * 0.9,
      height: height * 0.08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'Slash.',
            style: TextStyle(fontSize: 38),
          ),
          
          NavBarWidget(
            width: width,
            height: height,
          ),
          SearchWebWidget(width: width, height: height),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.location_on),
              const SizedBox(
                width: 3,
              ),
              Text(
                'Nasr City - ',
                style: TTextTheme.lightTheme.headlineSmall,
              ),
              Text(
                'Cairo',
                style: TTextTheme.lightTheme.bodyMedium,
              ),
              const Icon(Icons.keyboard_arrow_down),
            ],
          ),
          Stack(
            children: [
              Icon(
                Icons.notifications_outlined,
                size: 28,
                color: AppConstants.fontColor,
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
      ),
    );
  }
}
