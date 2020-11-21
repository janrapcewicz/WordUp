import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'Widgets/circular_progerss_bar.dart';

void main() {
  runApp(MyApp());
}

int _page = 0;
GlobalKey _bottomNavigationKey = GlobalKey();
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WordUp',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Color(0xFF52BECB),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: Colors.white,
      ),
      home: MyHomePage(title: 'Word Up'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'WordUp',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontFamily: 'Josefin',
            fontWeight: FontWeight.w700,
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        backgroundColor: Theme.of(context).accentColor,
        actions: [CircularProgressBar()],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        items: <Widget>[
          Icon(Icons.loop),
          Icon(Icons.grade),
          Icon(Icons.search),
          Icon(Icons.gamepad),
          Icon(Icons.settings),
        ],
        onTap: (index) {
          setState(() => _page = index );
        },
      ),
    );
  }
}
