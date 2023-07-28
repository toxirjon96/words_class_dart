import 'package:exam_modul/exam_modul_library.dart';

class Words {
  late String _word;

  factory Words({required String word}) {
    if (word.isEmpty) {
      throw EmptyStringException("Satr bo'sh bo'lmasligi kerak!");
    }
    if (RegExp(r"[a-z]+").hasMatch(word)) {
      throw LowerCaseFormatException(
          "Satr faqat kichik harflardan tashkil topishi kerak!");
    }
    return Words(word: word);
  }

  Words copyWith({String? word}) {
    return Words(word: word ?? this.word);
  }

  String get word => _word;

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
