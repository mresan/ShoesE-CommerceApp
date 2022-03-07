import 'package:flutter/material.dart';
import 'package:shoes_app/theme.dart';

class ItemSize extends StatefulWidget {
  @override
  State<ItemSize> createState() => _ItemSizeState();
}

class _ItemSizeState extends State<ItemSize> {
  List<String> sizeChart = [
    '36',
    '37',
    '38',
    '39',
    '40',
    '41',
    '42',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: kDefauktPadding),
      child: SizedBox(
        height: kDefauktPadding * 3 + 10,
        child: ListView.builder(
          itemCount: sizeChart.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              (index == 0) ? SizedBox(width: kDefauktPadding) : SizedBox(),
              buildCategory(index),
              SizedBox(width: kDefauktPadding),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        height: kDefauktPadding * 3 + 10,
        width: kDefauktPadding * 3 + 10,
        decoration: BoxDecoration(
          gradient: selectedIndex == index
              ? LinearGradient(
                  colors: [kOrange1, kOrange2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : LinearGradient(colors: [kgrey1, kgrey1]),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.all(kDefauktPadding - 10),
          child: Center(
            child: Text(
              sizeChart[index],
              style: kTextRegular.copyWith(fontSize: kDefauktPadding),
            ),
          ),
        ),
      ),
    );
  }
}
