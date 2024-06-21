import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/app_dimensions/app_dimensions_class.dart';
import 'package:flutter_application_8/core/utilis/theme/text_theme.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_category_cubt/fetch_category_cubit.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_category_cubt/fetch_category_state.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/widgets/categories/category_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/widgets/headingbody_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesWebWidget extends StatelessWidget {
  const CategoriesWebWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimension.initDimensions(context);
    double width = AppDimension.screenWidth;
    double height = AppDimension.screenHeight;
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          HeadingBodyWidget(
            headingText: 'Categories',
            width: width * 0.4,
            headingStyle: TTextTheme.lightTheme.headlineLarge!,
          ),
          SizedBox(
            height: height * 0.025,
          ),
          BlocBuilder<FetchCategoryCubit, FetchCategoryState>(
            builder: (context, state) {
              if (state is FetchCategorySuccess) {
                return SizedBox(
                  height: height*0.3,
                  child: ListView.builder(
                    itemCount: state.categories.length,
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                   // mainAxisAlignment: MainAxisAlignment.center,
                    itemBuilder:(context,index){   return Row(
                        children: [
                          CategoryWidget(
                              height: height,
                              category: state.categories[index],
                              radius: width * 0.05,
                              iconSize: width * 0.04,
                              titleStyle: TTextTheme.lightTheme.bodyLarge!),
                          SizedBox(
                            width: width * 0.05,
                          )
                        ],
                        
                      );
                  
                    }
                  ),
                );
              }
              return const CircularProgressIndicator();
            },
          ),
        ],
      ),
    );
  }
}
