import 'package:WordUp1/config/palette.dart';
import 'package:WordUp1/config/palette.dart';
import 'package:WordUp1/models/word_def_model.dart';
import 'package:flutter/material.dart';

class LearningCard extends StatefulWidget {
  final Word word;
  LearningCard({
    Key key,
    this.word,
  }) : super(key: key);

  @override
  _LearningCardState createState() => _LearningCardState(word: word);
}

class _LearningCardState extends State<LearningCard> {
  final Word word;
  _LearningCardState({this.word});

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: const EdgeInsets.fromLTRB(50, 50, 50, 0),
      height: MediaQuery.of(context).size.height / 2,
      width: MediaQuery.of(context).size.width * 0.85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        // boxShadow: [BoxShadow(blurRadius: 10, color: Color(0x22000000)),],
        color: Palette.cardColor[0],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              // ID and Distract Button
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '#' + word.idnumber.toString(),
                  style: TextStyle(
                      fontFamily: 'Main',
                      fontSize: 18,
                      color: Palette.commonTextColor[0]),
                )
              ],
            ),
          ),
          Column(// WORD and never forgating chance

              ),
          Column(// Lector audio and transcription

              ),
          Row(//I know, Test me, Learn Buttons

              )
        ],
      ),
    );
  }
}
