import 'package:flutter/cupertino.dart';
import 'package:flutter_application_8/features/home/domain/entities/product_entity.dart';
import 'package:flutter_application_8/features/home/presentation/views/widgets/headingbody_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/widgets/products_container.dart';

Widget productsWidget(double width, double height, String headingTitle,List<ProductEntity> products) =>
    Column(children: [
      headingBodyWidget(headingTitle, width),
      SizedBox(
        height: height * 0.02,
      ),
      SizedBox(
        height: height * 0.25,
        child: ListView.separated(
          //physics: NeverScrollableScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) =>
              productContainer(width, height, context,products[index]),
          separatorBuilder: (context, index) => SizedBox(
            width: width * 0.05,
          ),
          itemCount: 5,
        ),
      ),
    ]);
