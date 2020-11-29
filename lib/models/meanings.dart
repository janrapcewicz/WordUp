import 'package:WordUp1/models/parts_of_speach.dart';

class Meanings {
  final PartOfSpeach partOfSpeach;
  final String specifedMeaning;
  final List<String> examplesOfMeaning;
  final List<String> helpingCards;
  
    const Meanings({
      this.specifedMeaning,
      this.examplesOfMeaning,
      this.partOfSpeach,
      this.helpingCards
    });
  }