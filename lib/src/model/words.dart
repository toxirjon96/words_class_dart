import 'package:exam_modul/exam_modul_library.dart';

class Words with MixinValidation {
  late String _word;

  factory Words({required String word}) {
    try {
      return Words(word: word);
    } on EmptyStringException {
      rethrow;
    } on LowerCaseFormatException {
      rethrow;
    }
  }

  set word(String word) {
    if (word.isEmpty) {
      throw EmptyStringException("Satr bo'sh bo'lmasligi kerak!");
    }
    if (isLowerCaseString(word)) {
      throw LowerCaseFormatException(
          "Satr faqat kichik harflardan tashkil topishi kerak!");
    }
    _word = word;
  }

  String get word => _word;
}
