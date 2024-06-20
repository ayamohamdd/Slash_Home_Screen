import 'package:bloc/bloc.dart';
import 'package:flutter_application_8/features/home/domain/use_cases/fetch_recommended_products_use_case.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_recommended_products_cubit/fetch_recommended_products_state.dart';
import 'package:meta/meta.dart';


class FetchRecommendedProductsCubit extends Cubit<FetchRecommendedProductsState> {
  FetchRecommendedProductsCubit(this.fetchRecommendedProductsUseCase) : super(FetchRecommendedProductsInitial());
    final FetchRecommendedProductsUseCase fetchRecommendedProductsUseCase;

  Future<void> fetchRecommendedProducts() async {
    emit(FetchRecommendedProductsLoading());
    var recommendedResult = await fetchRecommendedProductsUseCase.call();
    recommendedResult.fold((l) {
      emit(FetchRecommendedProductsFailuer(errorMessage: l.message));
    }, (products) {
      emit(FetchRecommendedProductsSuccess(recommendedProducts: products, ));
    });
  }
}
