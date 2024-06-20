import 'package:dartz/dartz.dart';
import 'package:flutter_application_8/core/errors/failure.dart';
import 'package:flutter_application_8/core/use_cases/use_case.dart';
import 'package:flutter_application_8/features/home/domain/entities/product_entity.dart';
import 'package:flutter_application_8/features/home/domain/repos/home_repo.dart';

class FetchRecommendedProductsUseCase
    extends UseCase<Future<Either<Failure, List<ProductEntity>>>, NoParam> {
  final HomeRepo homeRepo;

  FetchRecommendedProductsUseCase({required this.homeRepo});

  @override
  Future<Either<Failure, List<ProductEntity>>> call([NoParam? param]) async {
    return await homeRepo.fetchRecommendedProducts();
  }
}
