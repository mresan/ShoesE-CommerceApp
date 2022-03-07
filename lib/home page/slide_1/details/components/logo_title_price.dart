import 'package:flutter/material.dart';
import 'package:shoes_app/models/product.dart';
import 'package:shoes_app/theme.dart';

class LogoTitlePrice extends StatelessWidget {
  final Product product;

  LogoTitlePrice({required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: kDefauktPadding * 8),
            child: Image.asset(product.logo),
          ),
          Text(
            product.title,
            style: kTextBold.copyWith(fontSize: kDefauktPadding + 5),
          ),
          Text(
            '\$${product.priceLine - product.priceLine * product.discount ~/ 100}',
            style: kTextRegular.copyWith(fontSize: kDefauktPadding + 5),
          ),
        ],
      ),
    );
  }
}
