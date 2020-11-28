import 'package:WordUp1/models/parts_of_speach.dart';
import 'package:flutter/material.dart';

class Meanings {
  final PartOfSpeach partOfSpeach;
  final String specifedMeaning;
  final String exampleOfMeaning;
  final List<String> helpingCards;
  
    const Meanings({
      @required this.specifedMeaning,
      @required this.exampleOfMeaning,
      @required this.partOfSpeach,
      this.helpingCards
    });
  }