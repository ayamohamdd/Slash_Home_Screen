import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_application_8/constants/app_dimensions/app_dimensions_class.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_new_arrival_products_cubit/fetch_new_arrival_products_cubit.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_new_arrival_products_cubit/fetch_new_arrival_products_state.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/widgets/products/products_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewArrivalProductsWidget extends StatelessWidget {
  const NewArrivalProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    AppDimension.initDimensions(context);
    double width = AppDimension.screenWidth;
    double height = AppDimension.screenHeight;
    return BlocBuilder<FetchNewArrivalProductsCubit,
        FetchNewArrivalProductsState>(
      builder: (context, state) {
        if (state is FetchNewArrivalProductsSuccess) {
          return ProductWidget(
              width: width,
              height: height,
              headingTitle: 'New Arrival',
              products: state.newArrivalProducts);
        }
        return Container();
      },
    );
  }
}
