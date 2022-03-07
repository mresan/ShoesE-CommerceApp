import 'package:flutter/material.dart';
import 'package:shoes_app/home%20page/slide_1/components/discount.dart';
import 'package:shoes_app/home%20page/slide_1/components/header.dart';
import 'package:shoes_app/home%20page/slide_1/components/main_sale.dart';
import 'package:shoes_app/home%20page/slide_1/components/top_categories.dart';
import 'components/item_categories.dart';

class Slide1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: [
          Header(),
          Discount(),
          TopCategories(),
          ItemCategory(),
          MainSale(),
        ],
      ),
    );
  }
}
