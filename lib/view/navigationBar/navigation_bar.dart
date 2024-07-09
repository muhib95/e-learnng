import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:second/utils/color.dart';
import 'package:second/view/home/home_page.dart';

class NavigationBarBottom extends StatefulWidget {
  const NavigationBarBottom({super.key});

  @override
  State<NavigationBarBottom> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBarBottom> {
  int cI = 0;
  List<Widget> screens=[
    HomePage(),
    Center(
      child: Text('t'),
    ),
    Center(
      child: Text('tt'),
    ),
    Center(
      child: Text('ttt'),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[cI],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            cI = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColor.primaryColor,
        unselectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: cI,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.star),
              icon: Icon(Icons.star_border), label: 'Featured'),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.play_circle),
              icon: Icon(Icons.play_circle_outline), label: 'Learning'),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.favorite),
              icon: Icon(Icons.favorite_border), label: 'Favorite'),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.settings),
              icon: Icon(Icons.settings_outlined), label: 'Settings'),

        ],
      ),
    );
  }
}


