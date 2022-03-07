import 'package:flutter/material.dart';
import 'package:shoes_app/theme.dart';

class DiscountModel {
  final String imageTitle;
  final Gradient gradientBox;

  DiscountModel(this.imageTitle, this.gradientBox);
}

List<DiscountModel> discounts = [
  DiscountModel(
    'assets/images/Discount1.png',
    LinearGradient(
      colors: [kBlueAccent1, kBlueAccent2],
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
    ),
  ),
  DiscountModel(
    'assets/images/Discount2.png',
    LinearGradient(
      colors: [kYellow1, kYellow2],
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
    ),
  ),
  DiscountModel(
    'assets/images/Discount3.png',
    LinearGradient(
      colors: [kOrange1, kOrange2],
      begin: Alignment.centerRight,
      end: Alignment.centerLeft,
    ),
  ),
];
