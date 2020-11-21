import 'package:WordUp1/models/parts_of_speach.dart';
import 'package:flutter/widgets.dart';

class Meanings {
  final PartOfSpeach partOfSpeach;
  final String specifedMeaning;
  final String exampleOfMeaning;

  const Meanings({
    @required this.specifedMeaning,
    @required this.exampleOfMeaning,
    @required this.partOfSpeach
  });
}
