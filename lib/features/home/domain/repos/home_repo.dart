import 'package:dartz/dartz.dart';
import 'package:flutter_application_8/core/errors/failure.dart';
import 'package:flutter_application_8/features/home/domain/entities/category_entity.dart';
import 'package:flutter_application_8/features/home/domain/entities/product_entity.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<ProductEntity>>> fetchBestSellingProducts();
  Future<Either<Failure, List<ProductEntity>>> fetchNewArrivalProducts();
  Future<Either<Failure, List<ProductEntity>>> fetchRecommendedProducts();

  Either<Failure, List<CategoryEntity>> fetchCategories();
}
