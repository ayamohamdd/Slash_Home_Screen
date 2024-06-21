part of 'fetch_best_selling_products_cubit.dart';

abstract class FetchBestSellingProductsState {}

final class FetchBestSellingProductsInitial
    extends FetchBestSellingProductsState {}

final class FetchBestSellingProductsLoading
    extends FetchBestSellingProductsState {}

final class FetchBestSellingProductsSuccess
    extends FetchBestSellingProductsState {
  List<ProductEntity> bestSellingProducts;
  FetchBestSellingProductsSuccess({
    required this.bestSellingProducts,
  });
}

final class FetchBestSellingProductsFailuer
    extends FetchBestSellingProductsState {
  final String errorMessage;

  FetchBestSellingProductsFailuer({required this.errorMessage});
}
