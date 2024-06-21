import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/app_dimensions/app_dimensions_class.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_best_selling_products_cubit/fetch_best_selling_products_cubit.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_category_cubt/fetch_category_cubit.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_category_cubt/fetch_category_state.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_new_arrival_products_cubit/fetch_new_arrival_products_cubit.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_new_arrival_products_cubit/fetch_new_arrival_products_state.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_recommended_products_cubit/fetch_recommended_products_cubit.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_recommended_products_cubit/fetch_recommended_products_state.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/widgets/categories/categories_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/widgets/products/best_selling_products_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/widgets/products/new_arrival_products_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/widgets/products/products_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/widgets/appbar_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/widgets/categories/category_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/widgets/headingbody_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/widgets/offer_container.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/widgets/products/recommended_products_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/widgets/search_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                  child: const AppBarWidget(),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      bottom: height * 0.035,
                      top: height * 0.015,
                      right: width * 0.07),
                  child: SearchWidget(width: width, height: height),
                ),
                OfferCarousel(height: height*0.2,width: width*0.8,),
                SizedBox(
                  height: height * 0.03,
                ),
                Column(
                  children: [
                    CategoriesWidget(radius: 36,),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    const BestSellingProductsWidget(),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    const NewArrivalProductsWidget(),
                    SizedBox(
                      height: height * 0.015,
                    ),
                    const RecommendedWidget(),
                    
                  ],
                )
              ],
            )));
  }
}
