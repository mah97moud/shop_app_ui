import 'package:flutter/material.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/shared/constants.dart';

class Description extends StatelessWidget {
  const Description({
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
      child: Text(
        product.description,
        style: TextStyle(
          height: 1.5,
        ),
      ),
    );
  }
}
