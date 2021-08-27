import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'cart_counter.dart';

class CounterWithFavBtn extends StatelessWidget {
  const CounterWithFavBtn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CartCounter(),
        SizedBox(
          height: 32.0,
          width: 32.0,
          child: Container(
            padding: EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Color(0xFFFF6464),
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset('assets/icons/heart.svg'),
          ),
        ),
      ],
    );
  }
}
