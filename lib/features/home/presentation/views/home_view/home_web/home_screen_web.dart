import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/app_dimensions/app_dimensions_class.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/home_web/widgets/app_bar/app_bar_web_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/home_web/widgets/categories/categories_web_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/core_widgets/app_bar/offer_container.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/core_widgets/products/best_selling_products_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/core_widgets/products/new_arrival_products_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/core_widgets/products/recommended_products_widget.dart';

class HomeWebScreen extends StatefulWidget {
  const HomeWebScreen({super.key});

  @override
  State<HomeWebScreen> createState() => _HomeScreenWebState();
}

class _HomeScreenWebState extends State<HomeWebScreen> {
  @override
  Widget build(BuildContext context) {
    AppDimension.initDimensions(context);
    double width = AppDimension.screenWidth;
    double height = AppDimension.screenHeight;
    return Scaffold(
        body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38.0, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppBarWebWidget(
                width: width,
                height: height,
              ),
              SizedBox(
                height: height * 0.03,
              ),
              OfferCarousel(height: height * 0.6, width: width * 0.6),
              SizedBox(
                height: height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.only(left: width * 0.030),
                child: Column(
                  children: [
                    const CategoriesWebWidget(),
                    SizedBox(
                      height: height * 0.03,
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
                ),
              ),
            ],
          ),
        )
      ],
    ));
  }
}
