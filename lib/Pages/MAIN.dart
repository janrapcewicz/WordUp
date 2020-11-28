import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'main_pages/export_pages.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int current_page = 2;
  final List<Widget> pages = [
    ReviewPage(),
    RatingPage(),
    SearchPage(),
    EntertaimentPage(),
    PreferencesPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        actions: [],
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(5),
            bottomRight: Radius.circular(5),
          ),
        ),
        title: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
                style: TextStyle(
                  // fontFamily: 'Josefin',
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25,
                  letterSpacing: 1.5,
                ),
                children: <TextSpan>[
                  TextSpan(
                      text: 'word',
                      style: TextStyle(color: Theme.of(context).accentColor)),
                  TextSpan(
                      text: 'up', style: TextStyle(color: Colors.yellow[600])),
                ]),
          ),
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        // iconSize: 30.0,
        // elevation: 20.0,
        borderRadius: Radius.circular(5),
        currentIndex: current_page,
        onTap: (index) {
          setState(() => current_page = index);
        },
        items: [
          CustomNavigationBarItem(
            icon: Icon(Icons.loop_outlined),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.graphic_eq_outlined),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.gamepad_outlined),
          ),
          CustomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
      body: pages[current_page],
    );
  }
}
