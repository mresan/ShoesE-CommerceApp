import 'package:flutter/material.dart';
import 'package:shoes_app/theme.dart';

class ItemCategory extends StatefulWidget {
  @override
  State<ItemCategory> createState() => _ItemCategoryState();
}

class _ItemCategoryState extends State<ItemCategory> {
  List<String> categoryImage = [
    'assets/images/Category1.png',
    'assets/images/Category2.png',
    'assets/images/Category3.png',
    'assets/images/Category4.png',
    'assets/images/Category5.png',
    'assets/images/Category6.png',
    'assets/images/Category7.png',
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: kDefauktPadding),
      child: SizedBox(
        height: kDefauktPadding * 3 + 10,
        child: ListView.builder(
          itemCount: categoryImage.length,
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
                  colors: [kBlueAccent1, kBlueAccent2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )
              : LinearGradient(colors: [kgrey1, kgrey1]),
          // color: selectedIndex == index ? kblue1 : kgrey1.withOpacity(.3),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: EdgeInsets.all(kDefauktPadding - 10),
          child: Image.asset(
            categoryImage[index],
          ),
        ),
      ),
    );
  }
}
