import 'package:bloc/bloc.dart';
import 'package:flutter_application_8/features/home/domain/entities/product_entity.dart';
import 'package:flutter_application_8/features/home/domain/use_cases/fetch_best_selling_products_use_case.dart';
import 'package:flutter_application_8/features/home/domain/use_cases/fetch_new_arrival_products_use_case.dart';
import 'package:flutter_application_8/features/home/domain/use_cases/fetch_recommended_products_use_case.dart';
import 'package:meta/meta.dart';

part 'fetch_best_selling_products_state.dart';

class FetchBestSellingProductsCubit extends Cubit<FetchBestSellingProductsState> {
  FetchBestSellingProductsCubit(this.fetchBestSellingProductsUseCase)
      : super(FetchBestSellingProductsInitial());

  final FetchBestSellingProductsUseCase fetchBestSellingProductsUseCase;

  Future<void> fetchBestSellingProducts() async {
    emit(FetchBestSellingProductsLoading());
    var bestSellingResult = await fetchBestSellingProductsUseCase.call();
    bestSellingResult.fold((l) {
      emit(FetchBestSellingProductsFailuer(errorMessage: l.message));
    }, (products) {
      emit(FetchBestSellingProductsSuccess(bestSellingProducts: products, ));
    });
  }
  
}
