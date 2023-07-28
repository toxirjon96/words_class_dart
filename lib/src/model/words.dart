import 'package:exam_modul/exam_modul_library.dart';

class Words {
  late String _word;

  Words({required String word}) {
    _word = word;
  }
  factory Words.byFactory({required String word}) {
    if (word.isEmpty) {
      throw EmptyStringException("Satr bo'sh bo'lmasligi kerak!");
    }
    if (!RegExp(r"[a-z]+").hasMatch(word)) {
      throw LowerCaseFormatException(
          "Satr faqat kichik harflardan tashkil topishi kerak!");
    }
    return Words(word: word);
  }

  Words copyWith({String? word}) {
    return Words(word: word ?? this.word);
  }

  String get word => _word;

  String reverseVowels() {
    RegExp vowelsValidation = RegExp(r"[aeiou]");
    String onlyVowels = word
        .split("")
        .where((e) => vowelsValidation.hasMatch(e))
        .toList()
        .reversed
        .join("");
    String result = "";
    int index = 0;
    for (int i = 0; i < word.length; i++) {
      if (vowelsValidation.hasMatch(word[i])) {
        result += onlyVowels[index];
        index++;
      } else {
        result += word[i];
      }
    }
    return result;
  }

  @override
  bool operator ==(Object other) => other is Words && other.word == word;

  @override
  int get hashCode => Object.hashAll([word]);

  @override
  noSuchMethod(Invocation invocation) {
    print("Classda bunday method yoki property mavjud emas!");
  }

  @override
  String toString() {
    return "$runtimeType{word:$word}";
  }
}
