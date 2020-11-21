import 'package:WordUp1/models/meanings.dart';
import 'package:meta/meta.dart';

class Word {
  final String word;
  final int idnumber;
  final String transcription;
  final String translates;
  final String pronunciation;
  final bool isnew;
  final String allexamples;
  final List<Meanings> meanings;


  const Word({
    @required this.word,
    @required this.transcription,
    @required this.translates,
    @required this.isnew,
    @required this.idnumber,
    @required this.pronunciation,
    @required this.allexamples,
    @required this.meanings,
  });
}
