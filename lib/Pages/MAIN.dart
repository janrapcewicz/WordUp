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
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(68),
        child: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 18, bottom: 8),
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        style: TextStyle(
                          fontFamily: 'Main',
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 35,
                          letterSpacing: 2,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Word',
                            style: TextStyle(color: Palette.accentColor[0]),
                          ),
                          TextSpan(
                            text: 'Up',
                            style: TextStyle(color: Colors.yellow[600]),
                          ),
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavBar(
        currentPage: currentPage,
        onTap: (index) => setState(() => currentPage = index),
        iconSize: 25.0,
      ),
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 150),
        child: _pages[currentPage],
      ),
    );
  }
}
