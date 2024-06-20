import 'package:flutter_application_8/features/home/domain/entities/product_entity.dart';

class ProductCategoryModel extends ProductEntity {
  int? id;
  String? name;
  double? price;
  String? image;

  ProductCategoryModel({this.id, this.name, this.price, this.image})
      : super(
            pid: id,
            eImage: image,
            eName: name,
            ePrice: price,
            eCategoryImage: '');

  factory ProductCategoryModel.fromJson(Map<String, dynamic> json) {
    return ProductCategoryModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      image: json['image'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'price': price,
        'image': image,
      };
}
