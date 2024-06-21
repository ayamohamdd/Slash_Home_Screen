import 'package:flutter/cupertino.dart';
import 'package:flutter_application_8/core/utilis/theme/text_theme.dart';
import 'package:flutter_application_8/features/home/domain/entities/product_entity.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/widgets/headingbody_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/widgets/products/products_container.dart';

class ProductWebWidget extends StatelessWidget {
  ProductWebWidget(
      {super.key,
      required this.width,
      required this.height,
      required this.headingTitle,
      required this.products});
  double width;
  double height;
  String headingTitle;
  List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      HeadingBodyWidget(
        headingText: headingTitle,
        width: width*0.4,
        headingStyle: TTextTheme.lightTheme.headlineLarge!,
      ),
      SizedBox(
        height: height * 0.02,
      ),
      SizedBox(
        height: height * 0.5,
        child: GridView.builder(
          itemBuilder: (BuildContext context, int index) =>
              ProductContainerWidget(
                productNameStyle: TTextTheme.lightTheme.bodyLarge!,
                  width: width,
                  height: height*0.25,
                  context: context,
                  products: products[index]),
          itemCount: products.length,
          gridDelegate:  SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent:width*0.18, //width
            mainAxisExtent:height* 0.5, //height
            crossAxisSpacing:width* 0.030, //horizontal distance
            childAspectRatio: 2.0,
          ),
        ),
      ),
    ]);
  }
}
