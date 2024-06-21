import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/app_dimensions/app_dimensions_class.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/home_mobile/widgets/categories_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/core_widgets/products/best_selling_products_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/core_widgets/products/new_arrival_products_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/home_mobile/widgets/appbar_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/core_widgets/app_bar/offer_container.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/core_widgets/products/recommended_products_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/core_widgets/app_bar/search_widget.dart';

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
                OfferCarousel(
                  height: height * 0.2,
                  width: width * 0.8,
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                Column(
                  children: [
                    const CategoriesWidget(
                      radius: 36,
                    ),
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
