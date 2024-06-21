import 'package:flutter/cupertino.dart';
import 'package:flutter_application_8/core/utilis/theme/text_theme.dart';
import 'package:flutter_application_8/features/home/domain/entities/product_entity.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/core_widgets/app_bar/headingbody_widget.dart';
import 'package:flutter_application_8/features/home/presentation/views/home_view/core_widgets/products/products_container.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget(
      {super.key,
      required this.width,
      required this.height,
      required this.headingTitle,
      required this.products});
  final double width;
  final double height;
  final String headingTitle;
  final List<ProductEntity> products;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      HeadingBodyWidget(
        headingText: headingTitle,
        width: width,
        headingStyle: TTextTheme.lightTheme.bodyLarge!,
      ),
      SizedBox(
        height: height * 0.02,
      ),
      SizedBox(
        height: height * 0.25,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) =>
              ProductContainerWidget(
                  productNameStyle: TTextTheme.lightTheme.bodyMedium!,
                  width: width,
                  height: height * .15,
                  context: context,
                  products: products[index]),
          separatorBuilder: (context, index) => SizedBox(
            width: width * 0.05,
          ),
          itemCount: products.length,
        ),
      ),
    ]);
  }
}
