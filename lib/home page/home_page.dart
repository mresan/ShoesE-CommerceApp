import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoes_app/home%20page/slide_1/slide_1.dart';
import 'package:shoes_app/home%20page/slide_2/slide_2.dart';
import 'package:shoes_app/home%20page/slide_3/slide_3.dart';
import 'package:shoes_app/home%20page/slide_4/slide_4.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';
import 'package:shoes_app/theme.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Color navigationBarColor = Colors.white;
  int selectedIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: navigationBarColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [
            Slide1(),
            Slide2(),
            Slide3(),
            Slide4(),
          ],
        ),
        bottomNavigationBar: BottomNavBar(),
      ),
    );
  }

  Widget BottomNavBar() {
    return ClipRRect(
      borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
      child: WaterDropNavBar(
        waterDropColor: Colors.white,
        bottomPadding: kDefauktPadding - 5,
        backgroundColor: kPurple2,
        onItemSelected: (int index) {
          setState(() {
            selectedIndex = index;
          });
          pageController.animateToPage(selectedIndex,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeOutQuad);
        },
        selectedIndex: selectedIndex,
        barItems: [
          BarItem(
            filledIcon: Icons.home,
            outlinedIcon: Icons.home_outlined,
          ),
          BarItem(
              filledIcon: Icons.favorite_rounded,
              outlinedIcon: Icons.favorite_border_rounded),
          BarItem(
            filledIcon: Icons.shopping_cart_rounded,
            outlinedIcon: Icons.shopping_cart_outlined,
          ),
          BarItem(
            filledIcon: Icons.person_rounded,
            outlinedIcon: Icons.person_outlined,
          ),
        ],
      ),
    );
  }
}
