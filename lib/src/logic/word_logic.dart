import 'package:exam_modul/exam_modul_library.dart';

class WordLogic {
  const WordLogic();

  void call() {
    String text = stdin.readLineSync() ?? "";

    try {
      Words w1 = Words.byFactory(word: text);
      Words w2 = w1.copyWith(word: "leetcode");
      print(w1.word);
      print(w1.reverseVowels());
      print(w1.hashCode);
      print(w1);
      print(w1 == w2);
      print(w2.reverseVowels());
    } on EmptyStringException catch (e) {
      print(e.message);
    } on LowerCaseFormatException catch (e) {
      print(e.message);
    }
  }
}
