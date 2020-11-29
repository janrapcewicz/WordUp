import 'package:WordUp1/config/palette.dart';
import 'package:WordUp1/Widgets/NAVBAR.dart';
import 'package:flutter/material.dart';
import 'main_tabs/export_pages.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentPage = 2;
  final List<Widget> _pages = [
    ReviewPage(),
    RatingPage(),
    SearchPage(),
    EntertaimentPage(),
    PreferencesPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _pages.length,
      child: Scaffold(
          // extendBody: true,
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
                          style:
                              TextStyle(color: Palette.accentColor[0])),
                      TextSpan(
                          text: 'up',
                          style: TextStyle(color: Colors.yellow[600])),
                    ]),
              ),
            ),
          ),
          bottomNavigationBar: NavBar(
            currentPage: currentPage,
            onTap: (index) => setState(() => currentPage = index),
            iconSize: 25.0,
          ),
          body: IndexedStack(
            index: currentPage,
            children: _pages,
          )),
    );
  }
}
