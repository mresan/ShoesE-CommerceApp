import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/models/product.dart';
import 'package:shoes_app/theme.dart';

class CarouselWithIndicatorDemo extends StatefulWidget {
  final Product product;

  CarouselWithIndicatorDemo({required this.product});
  @override
  State<StatefulWidget> createState() {
    return _CarouselWithIndicatorState(product: product);
  }
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicatorDemo> {
  final Product product;

  _CarouselWithIndicatorState({required this.product});
  int _current = 0;

  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final List<Image> images = [
      Image.asset(product.titleImage),
      Image.asset(product.titleImage2),
      Image.asset(product.titleImage3),
    ];
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          items: images,
          carouselController: _controller,
          options: CarouselOptions(
            height: kDefauktPadding * 15,
            autoPlay: true,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(
                () {
                  _current = index;
                },
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: images.asMap().entries.map(
            (entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: kDefauktPadding - 8,
                  height: kDefauktPadding - 8,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: (Theme.of(context).brightness == Brightness.dark
                              ? kgrey2
                              : kgrey2)
                          .withOpacity(_current == entry.key ? 0.9 : 0.4)),
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
