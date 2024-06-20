import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_8/constants/app_dimensions/app_dimensions_class.dart';
import 'package:flutter_application_8/constants/constants.dart';
import 'package:flutter_application_8/features/home/domain/entities/category_entity.dart';
import 'package:flutter_application_8/features/home/domain/use_cases/fetch_best_selling_products_use_case.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_best_selling_products_cubit/fetch_best_selling_products_cubit.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_category_cubt/fetch_category_cubit.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_category_cubt/fetch_category_state.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_new_arrival_products_cubit/fetch_new_arrival_products_cubit.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_new_arrival_products_cubit/fetch_new_arrival_products_state.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_recommended_products_cubit/fetch_recommended_products_cubit.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_recommended_products_cubit/fetch_recommended_products_state.dart';
import 'package:flutter_application_8/features/home/presentation/views/widgets/products_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/widgets/appbar_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/widgets/category_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/widgets/headingbody_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/widgets/offer_container.dart';
import 'package:flutter_application_8/features/home/presentation/views/widgets/icon_button_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/widgets/products_container.dart';
import 'package:flutter_application_8/core/utilis/theme/text_theme.dart';
import 'package:flutter_application_8/features/home/presentation/views/widgets/search_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
   
    AppDimension.initDimensions(context);
    double width = AppDimension.screenWidth;
    double height = AppDimension.screenHeight;
    return Scaffold(
        // appBar: AppBar(
        //   // leading: Text('Slash.',style: TTextTheme.lightTheme.headlineLarge,),
        //   title: Text('Slash.'),
        //   actions: [
        //     Padding(
        //       padding: EdgeInsets.only(right: 0.04 * width),
        //       child: customIconButton(
        //         backgroundColor: AppConstants.iconBackground!,
        //           icon: Icons.notifications_outlined,
        //           onPressed: () {},
        //           color: AppConstants.fontColor),
        //     )
        //   ],
        // ),
        body: Padding(
            padding: EdgeInsets.only(left: width * 0.07),
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                      top: height * 0.03,
                      bottom: height * 0.02,
                      right: width * 0.07),
                  child: appBarWidget(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: height * 0.035,
                      top: height * 0.015,
                      right: width * 0.07),
                  child: searchWidget(width, height),
                ),
                offerCarousel(height),
                SizedBox(
                  height: height * 0.03,
                ),
                Column(
                  children: [
                    headingBodyWidget('Categories', width),
                    SizedBox(
                      height: height * 0.02,
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
                                  categoryWidget(
                                      height, state.categories[index]),
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
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                BlocBuilder<FetchBestSellingProductsCubit,
                    FetchBestSellingProductsState>(
                  builder: (context, state) {
                    if (state is FetchBestSellingProductsSuccess) {
                      return productsWidget(width, height, 'Best Selling',
                          state.bestSellingProducts);
                    }
                    return Container();
                  },
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                BlocBuilder<FetchNewArrivalProductsCubit,
                    FetchNewArrivalProductsState>(
                  builder: (context, state) {
                    print(state.toString());
                    if (state is FetchNewArrivalProductsSuccess) {
                      return productsWidget(width, height, 'New Arrival',
                          state.newArrivalProducts);
                    }
                    return Container();
                  },
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                BlocBuilder<FetchRecommendedProductsCubit,
                    FetchRecommendedProductsState>(
                  builder: (context, state) {
                    print(state.toString());
                    if (state is FetchRecommendedProductsSuccess) {
                      return productsWidget(width, height,
                          'Recommended For You', state.recommendedProducts);
                    }
                    return Container();
                  },
                ),
              ],
            )));
  }
}
