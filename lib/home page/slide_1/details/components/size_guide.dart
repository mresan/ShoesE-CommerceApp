import 'package:flutter/material.dart';

import '../../../../theme.dart';

class SizeGuide extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefauktPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Size',
            style: kTextBold.copyWith(fontSize: kDefauktPadding - 5),
          ),
          Text(
            'Size Guide',
            style: kTextBold.copyWith(
              fontSize: kDefauktPadding - 5,
              color: kgrey2,
            ),
          ),
        ],
      ),
    );
  }
}
