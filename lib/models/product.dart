import 'package:flutter/material.dart';

class Product {
  final String titleImage, titleImage2, titleImage3, title, logo;
  final int id, discount, price, priceLine;
  final double rate;
  Product(
    this.id,
    this.discount,
    this.title,
    this.titleImage,
    this.titleImage2,
    this.titleImage3,
    this.price,
    this.priceLine,
    this.rate,
    this.logo,
  );
}

List<Product> products = [
  Product(
    1,
    30,
    'Nike Air 78',
    'assets/images/Nike1.png',
    'assets/images/Nike2.png',
    'assets/images/Nike3.png',
    120,
    160,
    4.6,
    'assets/images/LogoNike.png',
  ),
  Product(
    2,
    40,
    'Adidas NMD',
    'assets/images/Adidas1.png',
    'assets/images/Adidas2.png',
    'assets/images/Adidas3.png',
    120,
    190,
    4.6,
    'assets/images/LogoAdidas.png',
  ),
  Product(
    3,
    50,
    'Puma Enzo NXT',
    'assets/images/Puma1.png',
    'assets/images/Puma2.png',
    'assets/images/Puma3.png',
    120,
    250,
    4.6,
    'assets/images/LogoPuma.png',
  ),
  Product(
    4,
    60,
    'Nike Pegasus 20',
    'assets/images/Nike4.png',
    'assets/images/Nike5.png',
    'assets/images/Nike6.png',
    120,
    300,
    4.6,
    'assets/images/LogoNike.png',
  ),
];
