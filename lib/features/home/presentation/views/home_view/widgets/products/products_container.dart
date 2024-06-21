import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_8/constants/constants.dart';
import 'package:flutter_application_8/core/utilis/theme/text_theme.dart';
import 'package:flutter_application_8/features/home/domain/entities/product_entity.dart';
import 'package:flutter_application_8/core/utilis/theme/icon_button_widget.dart';

class ProductContainerWidget extends StatelessWidget {
  ProductContainerWidget(
      {super.key,
      required this.width,
      required this.height,
      required this.context,
      required this.products,
      required this.productNameStyle});
  double width;
  double height;
  BuildContext context;
  ProductEntity products;
  TextStyle productNameStyle;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: SizedBox(
        //color: AppConstants.primaryColor,
        width: width * 0.35,
        // height: height * 0.1,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image(
                height: height,
                width: double.infinity,
                fit: BoxFit.fill,
                image: AssetImage(products.eImage!),
              ),
            ),
            Text(
              products.eName!,
              style: productNameStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'EGP ${products.ePrice}',
                  style: TTextTheme.lightTheme.bodyMedium,
                ),
                Row(
                  children: [
                    customIconButton(
                        image: 'assets/images/Ellipse 106.png',
                        icon: null,
                        radius: 15,
                        size: 20,
                        backgroundColor: AppConstants.background2Color),
                    SizedBox(
                      width: width * 0.005,
                    ),
                    customIconButton(
                        image: null,
                        icon: Icons.add,
                        radius: 13,
                        size: 20,
                        backgroundColor: AppConstants.primaryColor)
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
