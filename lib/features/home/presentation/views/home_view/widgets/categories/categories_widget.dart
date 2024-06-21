import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/app_dimensions/app_dimensions_class.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_category_cubt/fetch_category_cubit.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_category_cubt/fetch_category_state.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/widgets/categories/category_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/widgets/headingbody_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimension.initDimensions(context);
    double width = AppDimension.screenWidth;
    double height = AppDimension.screenHeight;
    return Column(
      children: [
        HeadingBodyWidget(headingText: 'Categories', width: width),
        SizedBox(
          height: height * 0.025,
        ),
        BlocBuilder<FetchCategoryCubit, FetchCategoryState>(
          builder: (context, state) {
            if (state is FetchCategorySuccess) {
              return SizedBox(
                height: height * 0.15,
                width: double.infinity,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) =>
                      CategoryWidget(
                          height: height, category: state.categories[index]),
                  separatorBuilder: (context, index) => SizedBox(
                    width: width * 0.02,
                  ),
                  itemCount: state.categories.length,
                ),
              );
            }
            return Container();
          },
        ),
      ],
    );
  }
}
