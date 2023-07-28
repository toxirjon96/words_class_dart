import 'package:exam_modul/exam_modul_library.dart';

class WordLogic {
  const WordLogic();
  void call() {
    String word = stdin.readLineSync() ?? "";

    try {
      Words words = Words(word: word);
      print(words.word);
    } on EmptyStringException catch (e) {
      print(e.message);
    } on LowerCaseFormatException catch (e) {
      print(e.message);
    }
  }
}
