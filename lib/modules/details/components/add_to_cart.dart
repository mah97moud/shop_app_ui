import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/shared/constants.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding,
      ),
      child: Row(
        children: [
          Container(
            height: 50.0,
            width: 58.0,
            margin: EdgeInsets.only(
              right: kDefaultPadding,
            ),
            decoration: BoxDecoration(
              border: Border.all(
                color: product.color,
              ),
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: IconButton(
              icon: SvgPicture.asset('assets/icons/add_to_cart.svg'),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50.0,
              child: TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    product.color,
                  ),
                  foregroundColor: MaterialStateProperty.all(
                    Colors.white,
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        18.0,
                      ),
                    ),
                  ),
                ),
                child: Text(
                  'Buy Now'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding,
          )
        ],
      ),
    );
  }
}
