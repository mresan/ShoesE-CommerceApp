import 'package:flutter/material.dart';
import 'package:shoes_app/models/product.dart';
import 'package:shoes_app/theme.dart';

import 'components/body.dart';

class Details extends StatelessWidget {
  final Product product;

  Details({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [kPurple1, kPurple2],
          ),
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_sharp,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      centerTitle: true,
      title: Text(
        'Details',
        style: kTextBold.copyWith(color: Colors.white),
      ),
      actions: [
        Icon(
          Icons.favorite_border_outlined,
          color: Colors.white,
        ),
        SizedBox(width: kDefauktPadding - 5)
      ],
    );
  }
}
