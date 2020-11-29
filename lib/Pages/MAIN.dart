import 'package:WordUp1/config/palette.dart';
import 'package:WordUp1/Widgets/NAVBAR.dart';
import 'package:flutter/material.dart';
import 'package:gradient_widgets/gradient_widgets.dart';
import 'main_tabs/export_pages.dart';

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Rect shaderRect;
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
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (rect) =>
              Palette.gradientBackground[0].createShader(shaderRect ?? rect),
          blendMode: BlendMode.srcIn,
          child: Expanded(
            child: Container(
              color: Colors.black,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
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
                      child:
                          /*ShaderMask(
                        shaderCallback: (rect) => Palette.gradientLogo[0]
                            .createShader(shaderRect ?? rect),
                        blendMode: BlendMode.srcIn,
                        child:*/
                          Text(
                        'WordUp',
                        style: TextStyle(
                            fontFamily: 'Main',
                            fontWeight: FontWeight.bold,
                            color: Palette.accentColor[0],
                            fontSize: 35,
                            letterSpacing: 2,
                            shadows: [
                              Shadow(blurRadius: 4, color: Color(0x66888888))
                            ]),
                        //  ),
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
        ),
      ],
    );
  }
}
