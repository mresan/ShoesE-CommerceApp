import 'package:flutter/material.dart';

import '../../../theme.dart';

class TopCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(kDefauktPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Top Categories',
            style: kTextBold.copyWith(fontSize: kDefauktPadding - 5),
          ),
          Text(
            'SEE ALL',
            style: kTextBold.copyWith(
              fontSize: kDefauktPadding - 5,
              color: kblue1,
            ),
          ),
        ],
      ),
    );
  }
}
