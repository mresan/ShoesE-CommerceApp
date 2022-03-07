import 'dart:math';
import 'package:flutter/material.dart';
import '../../../../theme.dart';

class DescriptionAndCart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefauktPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Description',
                style: kTextBold.copyWith(fontSize: kDefauktPadding - 5),
              ),
              Transform.rotate(
                angle: pi / 2,
                child: Icon(Icons.arrow_back_ios_new_sharp),
              )
            ],
          ),
        ),
        SizedBox(height: kDefauktPadding),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefauktPadding),
          child: Container(
            height: kDefauktPadding * 4 - 10,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(kDefauktPadding * 2),
                gradient: LinearGradient(colors: [kPurple1, kPurple2])),
            child: Material(
              borderRadius: BorderRadius.circular(kDefauktPadding * 2),
              color: Colors.transparent,
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(kDefauktPadding * 2),
                child: Center(
                  child: Text(
                    'ADD TO CART',
                    style: kTextRegular.copyWith(
                      color: kwhite1,
                      fontSize: kDefauktPadding,
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
