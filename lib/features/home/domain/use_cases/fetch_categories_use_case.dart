import 'package:dartz/dartz.dart';
import 'package:flutter_application_8/core/errors/failure.dart';
import 'package:flutter_application_8/core/use_cases/use_case.dart';
import 'package:flutter_application_8/features/home/domain/entities/category_entity.dart';
import 'package:flutter_application_8/features/home/domain/repos/home_repo.dart';

class FetchCategoriesUseCase
    extends UseCase<Either<Failure, List<CategoryEntity>>, NoParam> {
  final HomeRepo homeRepo;

  FetchCategoriesUseCase({required this.homeRepo});

  @override
  Either<Failure, List<CategoryEntity>> call([NoParam? param]) {
    return homeRepo.fetchCategories();
  }
}
