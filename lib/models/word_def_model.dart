import 'package:meta/meta.dart';

class Word {
  final String word;
  final int id_number;
  final String transcription;
  final String translate;
  final String example;
  final bool is_new;

  const Word({
    @required this.word,
    @required this.transcription,
    @required this.translate,
    @required this.example,
    @required this.is_new,
    @required this.id_number
  });
}
