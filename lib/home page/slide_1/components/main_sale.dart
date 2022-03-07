import 'package:flutter/material.dart';
import 'package:shoes_app/home%20page/slide_1/components/item_sale.dart';
import 'package:shoes_app/home%20page/slide_1/details/details.dart';
import 'package:shoes_app/models/product.dart';
import 'package:shoes_app/theme.dart';

class MainSale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kDefauktPadding * 12,
      child: ListView.builder(
        itemCount: products.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            (index == 0) ? SizedBox(width: kDefauktPadding) : SizedBox(),
            ItemSale(
              product: products[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Details(
                    product: products[index],
                  ),
                ),
              ),
            ),
            SizedBox(width: kDefauktPadding),
          ],
        ),
      ),
    );
  }
}
