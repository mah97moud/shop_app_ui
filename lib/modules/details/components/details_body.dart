import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/modules/details/components/product_title_with_image.dart';
import 'package:shop_app/shared/constants.dart';

import 'add_to_cart.dart';
import 'color_and_size.dart';
import 'counter_with_fav_bar.dart';
import 'description.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    // It provide us total height and width
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Container(
                    margin: EdgeInsets.only(
                      top: size.height * 0.4,
                    ),
                    padding: EdgeInsets.only(
                      top: size.height * 0.15,
                      left: kDefaultPadding,
                      right: kDefaultPadding,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(
                          24.0,
                        ),
                        topRight: Radius.circular(
                          24.0,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        ColorAndSize(product: product),
                        Description(product: product),
                        CounterWithFavBtn(),
                        AddToCart(product: product),
                      ],
                    ),
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
