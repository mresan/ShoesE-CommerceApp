import 'package:flutter/material.dart';
import 'package:shoes_app/models/discount_model.dart';
import 'package:shoes_app/theme.dart';
import 'item_discount.dart';

class Discount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height / 5 - 20,
      child: ListView.builder(
        itemCount: discounts.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (index == 0) ? SizedBox(width: kDefauktPadding) : SizedBox(),
            ItemDiscount(
              discountModel: discounts[index],
            ),
            SizedBox(width: kDefauktPadding),
          ],
        ),
      ),
    );
  }
}
