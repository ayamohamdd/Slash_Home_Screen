import 'package:bloc/bloc.dart';
import 'package:flutter_application_8/features/home/domain/use_cases/fetch_new_arrival_products_use_case.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_new_arrival_products_cubit/fetch_new_arrival_products_state.dart';


class FetchNewArrivalProductsCubit extends Cubit<FetchNewArrivalProductsState> {
  FetchNewArrivalProductsCubit(this.fetchNewArrivalProductsUseCase) : super(FetchNewArrivalProductsInitial());
  final FetchNewArrivalProductsUseCase fetchNewArrivalProductsUseCase;

  Future<void> fetchNewArrivalProducts() async {
    emit(FetchNewArrivalProductsLoading());
    var newArrivalResult = await fetchNewArrivalProductsUseCase.call();
    newArrivalResult.fold((l) {
      emit(FetchNewArrivalProductsFailuer(errorMessage: l.message));
    }, (products) {
      emit(FetchNewArrivalProductsSuccess(newArrivalProducts: products, ));
    });
  }
}
