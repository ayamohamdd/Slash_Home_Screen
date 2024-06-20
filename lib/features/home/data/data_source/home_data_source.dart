import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_application_8/features/home/data/models/product_model/product_category_model.dart';
import 'package:flutter_application_8/features/home/data/models/product_model/product_model.dart';
import 'package:flutter_application_8/features/home/domain/entities/category_entity.dart';
import 'package:flutter_application_8/features/home/domain/entities/product_entity.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

abstract class HomeDataSource {
  Future<List<ProductEntity>> fetchBestSellingProducts();
  Future<List<ProductEntity>> fetchNewArrivalProducts();
  Future<List<ProductEntity>> fetchRecommendedProducts();

  List<CategoryEntity> fetchCategories();
}

class HomeDataSourceImpl extends HomeDataSource {
  @override
  List<CategoryEntity> fetchCategories() {
    return [
      CategoryEntity(icon: FontAwesomeIcons.shirt, title: 'Fashion'),
      CategoryEntity(icon: FontAwesomeIcons.dice, title: 'Games'),
      CategoryEntity(icon: FontAwesomeIcons.glasses, title: 'Accessories'),
      CategoryEntity(icon: FontAwesomeIcons.book, title: 'Books'),
      CategoryEntity(icon: FontAwesomeIcons.palette, title: 'Artifacts'),
      CategoryEntity(icon: FontAwesomeIcons.dog, title: 'Pets Care'),
    ];
  }

  Future<List<ProductEntity>> fetchData(String category) async {
    var response =
        await rootBundle.loadString("assets/dummy_data/dummyData.json");
    var data = json.decode(response);

    List<ProductEntity> productsList = [];
    for (var product in data[category]) {
      productsList.add(ProductCategoryModel.fromJson(product));
    }

    return productsList;
  }

  @override
  Future<List<ProductEntity>> fetchBestSellingProducts() async {
    return fetchData('bestSelling');
  }

  @override
  Future<List<ProductEntity>> fetchNewArrivalProducts() async {
    return fetchData('newArrival');
  }

  @override
  Future<List<ProductEntity>> fetchRecommendedProducts() async {
    return fetchData('recommendedForYou');
  }
}
