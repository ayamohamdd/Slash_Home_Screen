import 'package:flutter_application_8/features/home/domain/entities/product_entity.dart';

import 'product_category_model.dart';

class ProductModel{
  List<ProductCategoryModel>? bestSelling;
  List<ProductCategoryModel>? newArrival;
  List<ProductCategoryModel>? recommendedForYou;

  ProductModel({this.bestSelling, this.newArrival, this.recommendedForYou});

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
        bestSelling: (json['bestSelling'] as List<dynamic>?)
            ?.map((e) => ProductCategoryModel.fromJson(e as Map<String, dynamic>))
            .toList(),
        newArrival: (json['newArrival'] as List<dynamic>?)
            ?.map((e) => ProductCategoryModel.fromJson(e as Map<String, dynamic>))
            .toList(),
        recommendedForYou: (json['recommendedForYou'] as List<dynamic>?)
            ?.map((e) => ProductCategoryModel.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'bestSelling': bestSelling?.map((e) => e.toJson()).toList(),
        'newArrival': newArrival?.map((e) => e.toJson()).toList(),
        'recommendedForYou': recommendedForYou?.map((e) => e.toJson()).toList(),
      };
}
