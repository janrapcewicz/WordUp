import 'package:WordUp1/Widgets/learning_card.dart';
import 'package:WordUp1/config/palette.dart';
import 'package:WordUp1/models/models.dart';
import 'package:flutter/material.dart';

class ReviewPage extends StatefulWidget {
  ReviewPage({Key key}) : super(key: key);

  @override
  _ReviewPageState createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  Word debugWord = Word(
    word: 'Distract',
    allexamples: [
      'An attempt to distract attention away from the real problems in the country.', 
      'I\'ve tried writing with music on, but I find it dustracting.',
      'Humans get distracted when we see and touch something.',
      'I\'m easily distracted by other things in the world around me.'
    ],
    idnumber: 2424, 
    isnew: false,
    pronunciation: ')))))))',
    transcription: '/distract/',
    translates: ["отвлекать","отвлекают","отвлечь","приводть в сметение","развлекать"],
    meanings: [
      Meanings(
        partOfSpeach: PartOfSpeach.VERB,
        helpingCards: ['Distract smbd/smth (from smth)','Synonym: Divert'],
        specifedMeaning: 'To take somebody\'s attention away from what they are trying to do',
        examplesOfMeaning: ['It was another attempt to distract attention from the truth.','An attempt to distract attention away from the real problems in the country.'],
      ), 
    ],

  );
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Palette.white[0],
      body: Center(child: LearningCard(word: debugWord)),
    );
  }
}