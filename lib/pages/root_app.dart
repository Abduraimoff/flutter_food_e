import 'package:flutter/material.dart';
import 'package:food_e/pages/home_page/home_page.dart';
import 'package:food_e/utils/app_color.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int selectedIndex = 0;

  List pages = const [
    HomePage(),
    Center(child: Text('SEARCH')),
    Center(child: Text('BASKET')),
    Center(child: Text('PROFILE')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: WaterDropNavBar(bottomPadding: 10,
          iconSize: 35,
          waterDropColor: AppColor.kPrimaryColor,
          onItemSelected: (int index) {
            setState(() {
              selectedIndex = index;
            });
          },
          selectedIndex: selectedIndex,
          barItems: [
            BarItem(
                filledIcon: Icons.home_rounded,
                outlinedIcon: Icons.home_outlined),
            BarItem(
              filledIcon: Icons.search_rounded,
              outlinedIcon: Icons.search_outlined,
            ),
            BarItem(
              filledIcon: Icons.shopping_basket_rounded,
              outlinedIcon: Icons.shopping_basket_outlined,
            ),
            BarItem(
              filledIcon: Icons.person_rounded,
              outlinedIcon: Icons.person_outline_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
