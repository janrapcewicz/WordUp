import 'package:WordUp1/config/palette.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatelessWidget {
  int currentPage;
  final Function(int) onTap;
  double iconSize = 25.0;

  NavBar({
    Key key,
    @required this.currentPage,
    @required this.onTap,
    this.iconSize,
  }) : super(key: key);

  final List<IconData> icons = [
    Icons.loop_outlined,
    Icons.graphic_eq_outlined,
    Icons.search_outlined,
    Icons.gamepad_outlined,
    Icons.account_circle_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [BoxShadow(blurRadius: 10, color: Color(0x11000000)),],
        // borderRadius: BorderRadius.only(topLeft: Radius.circular(31),topRight: Radius.circular(31)),
        color: Palette.white[0],
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.5, vertical: 5),
          child: GNav(
            gap: 8,
            activeColor: Palette.accentColor[0],
            iconSize: 25,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            duration: Duration(milliseconds: 300),
            tabBackgroundColor: Palette.cardColor[0],
            selectedIndex: currentPage,
            onTabChange: onTap,
            tabs: [
              GButton(icon: icons[0]),
              GButton(icon: icons[1]),
              GButton(icon: icons[2]),
              GButton(icon: icons[3]),
              GButton(icon: icons[4]),
            ],
          ),
        ),
      ),
    );
  }
}
