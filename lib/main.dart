import 'package:flutter/material.dart';
import 'Pages/MAIN.dart';

void main() {
  runApp(MyApp());
}

int page = 2;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter WordUp',
      theme: ThemeData(
        accentColor: Color(0xFF536CE3),
        cardColor:   Color(0xFF52BECB),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        backgroundColor: Color(0xFFEFF3FE),
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
    return MainPage();
  }
}
