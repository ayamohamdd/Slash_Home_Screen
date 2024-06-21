import 'package:flutter_application_8/features/home/domain/entities/category_entity.dart';

abstract class FetchCategoryState {}

final class FetchCategoryInitial extends FetchCategoryState {}

final class FetchCategoryLoading extends FetchCategoryState {}

final class FetchCategorySuccess extends FetchCategoryState {
  List<CategoryEntity> categories;
  FetchCategorySuccess({
    required this.categories,
  });
}

final class FetchCategoryFailuer extends FetchCategoryState {
  final String errorMessage;

  FetchCategoryFailuer({required this.errorMessage});
}
