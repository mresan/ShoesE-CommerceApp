import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shoes_app/models/product.dart';
import 'package:shoes_app/theme.dart';

class ItemSale extends StatelessWidget {
  final Product product;
  final VoidCallback press;

  ItemSale({required this.product, required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Stack(
        children: [
          Container(
            height: kDefauktPadding * 12,
            width: kDefauktPadding * 8,
            decoration: BoxDecoration(
              color: kgrey1,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.all(kDefauktPadding - 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: kDefauktPadding * 2 - 10,
                        width: kDefauktPadding * 4,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            '${product.discount}% OFF',
                            style: kTextBold.copyWith(
                                fontSize: kDefauktPadding / 2 + 2),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.favorite_rounded,
                        color: kgrey3,
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.title,
                        style: kTextBold.copyWith(fontWeight: FontWeight.w500),
                      ),
                      Divider(
                        height: 2,
                        color: kblack,
                        thickness: 1,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '\$${product.priceLine}',
                            style: kTextBold.copyWith(color: kblack),
                          ),
                          SizedBox(width: 4),
                          Icon(Icons.double_arrow_sharp),
                          SizedBox(width: 4),
                          Text(
                            '\$${product.priceLine - product.priceLine * product.discount ~/ 100}',
                            style: kTextBold.copyWith(color: kblue1),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: kDefauktPadding / 4 - 2,
            child: Transform.rotate(
              angle: -pi / 4,
              child: Image.asset(
                product.titleImage,
                height: kDefauktPadding * 10,
                width: kDefauktPadding * 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
