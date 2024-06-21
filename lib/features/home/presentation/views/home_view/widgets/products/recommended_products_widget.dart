import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_8/constants/app_dimensions/app_dimensions_class.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_recommended_products_cubit/fetch_recommended_products_cubit.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_recommended_products_cubit/fetch_recommended_products_state.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/home_web/widgets/product_web_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/widgets/products/products_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RecommendedWidget extends StatelessWidget {
  const RecommendedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimension.initDimensions(context);
    double width = AppDimension.screenWidth;
    double height = AppDimension.screenHeight;
    return BlocBuilder<FetchRecommendedProductsCubit,
        FetchRecommendedProductsState>(
      builder: (context, state) {
        if (state is FetchRecommendedProductsSuccess) {
         return LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
            if (constraints.maxWidth.toInt() <= 640) {
              return ProductWidget(
                  width: width,
                  height: height,
                  headingTitle: 'Recommended for you',
                  products: state.recommendedProducts);
            } else {
              return ProductWebWidget(
                  width: width,
                  height: height,
                  headingTitle: 'Recommended for you',
                  products: state.recommendedProducts);
            }
          });
        }
        return Container();
      },
    );
  }
}
