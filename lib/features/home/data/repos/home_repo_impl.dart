import 'package:dartz/dartz.dart';
import 'package:flutter_application_8/core/errors/failure.dart';
import 'package:flutter_application_8/features/home/data/data_source/home_data_source.dart';
import 'package:flutter_application_8/features/home/data/models/product_model/product_category_model.dart';
import 'package:flutter_application_8/features/home/data/models/product_model/product_model.dart';
import 'package:flutter_application_8/features/home/domain/entities/category_entity.dart';
import 'package:flutter_application_8/features/home/domain/entities/product_entity.dart';
import 'package:flutter_application_8/features/home/domain/repos/home_repo.dart';

class HomeRepoImpl extends HomeRepo {
  final HomeDataSource homeDataSource;

  HomeRepoImpl({required this.homeDataSource});
  @override
  Future<Either<Failure, List<ProductEntity>>>
      fetchBestSellingProducts() async {
    try {
      var bestSellingProducts = await homeDataSource.fetchBestSellingProducts();
      return right(bestSellingProducts);
    } on Exception catch (e) {
      return left(FetchinDataFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> fetchNewArrivalProducts() async {
    try {
      var bestNewArrivalProducts =
          await homeDataSource.fetchNewArrivalProducts();
      return right(bestNewArrivalProducts);
    } on Exception catch (e) {
      return left(FetchinDataFailure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>>
      fetchRecommendedProducts() async {
    try {
      var bestRecommendedProducts =
          await homeDataSource.fetchRecommendedProducts();
      return right(bestRecommendedProducts);
    } on Exception catch (e) {
      return left(FetchinDataFailure(message: e.toString()));
    }
  }

  @override
  Either<Failure,List<CategoryEntity>> fetchCategories() {
    
     try {
      var categories = homeDataSource.fetchCategories();
      
      return right(categories);
    } on Exception catch (e) {
      return left(FetchinDataFailure(message: e.toString()));
    }
  }
}
