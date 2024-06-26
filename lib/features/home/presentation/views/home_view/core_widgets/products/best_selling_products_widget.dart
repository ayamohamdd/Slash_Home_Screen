import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/app_dimensions/app_dimensions_class.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_best_selling_products_cubit/fetch_best_selling_products_cubit.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/home_web/widgets/products/product_web_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/home_mobile/widgets/products_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellingProductsWidget extends StatelessWidget {
  const BestSellingProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimension.initDimensions(context);
    double width = AppDimension.screenWidth;
    double height = AppDimension.screenHeight;
    return BlocBuilder<FetchBestSellingProductsCubit,
        FetchBestSellingProductsState>(
      builder: (context, state) {
        if (state is FetchBestSellingProductsSuccess) {
          return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth.toInt() <= 640) {
              return ProductWidget(
                  width: width,
                  height: height,
                  headingTitle: 'Best Selling',
                  products: state.bestSellingProducts);
            } else {
              return ProductWebWidget(
                  width: width,
                  height: height,
                  headingTitle: 'Best Selling',
                  products: state.bestSellingProducts);
            }
          });
        }
        return const CircularProgressIndicator();
      },
    );
  }
}
