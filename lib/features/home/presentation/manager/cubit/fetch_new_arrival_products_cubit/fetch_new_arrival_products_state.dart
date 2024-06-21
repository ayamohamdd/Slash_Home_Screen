import 'package:flutter_application_8/features/home/domain/entities/product_entity.dart';

abstract class FetchNewArrivalProductsState {}

final class FetchNewArrivalProductsInitial
    extends FetchNewArrivalProductsState {}

final class FetchNewArrivalProductsLoading
    extends FetchNewArrivalProductsState {}

final class FetchNewArrivalProductsSuccess
    extends FetchNewArrivalProductsState {
  List<ProductEntity> newArrivalProducts;
  FetchNewArrivalProductsSuccess({
    required this.newArrivalProducts,
  });
}

final class FetchNewArrivalProductsFailuer
    extends FetchNewArrivalProductsState {
  final String errorMessage;

  FetchNewArrivalProductsFailuer({required this.errorMessage});
}
