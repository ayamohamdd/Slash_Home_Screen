import 'package:flutter_application_8/features/home/domain/entities/product_entity.dart';

abstract class FetchRecommendedProductsState {}

final class FetchRecommendedProductsInitial
    extends FetchRecommendedProductsState {}

final class FetchRecommendedProductsLoading
    extends FetchRecommendedProductsState {}

final class FetchRecommendedProductsSuccess
    extends FetchRecommendedProductsState {
  List<ProductEntity> recommendedProducts;
  FetchRecommendedProductsSuccess({
    required this.recommendedProducts,
  });
}

final class FetchRecommendedProductsFailuer
    extends FetchRecommendedProductsState {
  final String errorMessage;

  FetchRecommendedProductsFailuer({required this.errorMessage});
}
