import 'package:meta/meta.dart';

class Word {
  final String word;
  final String transcription;
  final String translate;

  const Word({
    @required this.word,
    @required this.transcription,
    @required this.translate,
  });
}