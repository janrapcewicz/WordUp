import 'package:flutter/material.dart';

class RatingPage extends StatefulWidget {
  RatingPage({Key key}) : super(key: key);

  @override
  _RatingPageState createState() => _RatingPageState();
}

class _RatingPageState extends State<RatingPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text('Rating'),
    );
  }
}