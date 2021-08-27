import 'package:flutter/material.dart';
import 'package:shop_app/shared/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedBtn(
          press: () {
            if (numOfItems > 1) {
              setState(() {
                numOfItems--;
              });
            }
          },
          iconData: Icons.remove,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.0),
          child: Text(
            '$numOfItems'.padLeft(2, '0'),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlinedBtn(
          iconData: Icons.add,
          press: () {
            setState(() {
              numOfItems++;
            });
          },
        ),
      ],
    );
  }

  SizedBox buildOutlinedBtn({
    required IconData iconData,
    required GestureTapCallback press,
  }) {
    return SizedBox(
      height: 40.0,
      width: 32.0,
      child: OutlinedButton(
        onPressed: press,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(
            EdgeInsets.zero,
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                13.0,
              ),
            ),
          ),
        ),
        child: Icon(
          iconData,
        ),
      ),
    );
  }
}
