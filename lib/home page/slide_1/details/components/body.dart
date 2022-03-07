import 'package:flutter/material.dart';
import 'package:shoes_app/home%20page/slide_1/details/components/logo_title_price.dart';
import 'package:shoes_app/home%20page/slide_1/details/components/size_guide.dart';
import 'package:shoes_app/models/product.dart';
import 'carousel_slider.dart';
import 'description_and_cart.dart';
import 'item_size.dart';

class Body extends StatelessWidget {
  final Product product;

  Body({required this.product});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselWithIndicatorDemo(product: product),
        LogoTitlePrice(product: product),
        SizeGuide(),
        ItemSize(),
        DescriptionAndCart(),
      ],
    );
  }
}
