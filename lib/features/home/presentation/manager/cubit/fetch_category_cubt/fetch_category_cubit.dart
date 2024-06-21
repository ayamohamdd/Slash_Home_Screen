import 'package:bloc/bloc.dart';
import 'package:flutter_application_8/features/home/domain/use_cases/fetch_categories_use_case.dart';
import 'package:flutter_application_8/features/home/presentation/manager/cubit/fetch_category_cubt/fetch_category_state.dart';

class FetchCategoryCubit extends Cubit<FetchCategoryState> {
  FetchCategoryCubit(this.fetchCategoriesUseCase)
      : super(FetchCategoryInitial());

  final FetchCategoriesUseCase fetchCategoriesUseCase;

  void fetchCategory() {
    emit(FetchCategoryLoading());
    var result = fetchCategoriesUseCase.call();
    result.fold((l) {
      emit(FetchCategoryFailuer(errorMessage: l.message));
    }, (categories) {
      emit(FetchCategorySuccess(
        categories: categories,
      ));
    });
  }
}
