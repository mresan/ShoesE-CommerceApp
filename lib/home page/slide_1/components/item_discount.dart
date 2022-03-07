import 'package:flutter/material.dart';
import 'package:shoes_app/models/discount_model.dart';
import '../../../theme.dart';

class ItemDiscount extends StatelessWidget {
  final DiscountModel discountModel;

  ItemDiscount({required this.discountModel});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: kDefauktPadding * 8,
          width: size.width / 2 + 100,
          decoration: BoxDecoration(
            gradient: discountModel.gradientBox,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: EdgeInsets.all(kDefauktPadding),
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '50% OFF DURING \nCOVID 19',
                      style: kTextBold.copyWith(
                        fontSize: kDefauktPadding,
                        color: Colors.white,
                      ),
                    ),
                    MaterialButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      elevation: 2,
                      color: Colors.white,
                      onPressed: () {},
                      child: Text(
                        'Get Now',
                        style: kTextRegular.copyWith(color: kblue1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          left: kDefauktPadding * 10 - 10,
          top: kDefauktPadding * 2 - 10,
          child: Image.asset(
            discountModel.imageTitle,
            height: kDefauktPadding * 6,
            width: kDefauktPadding * 6,
          ),
        ),
      ],
    );
  }
}
