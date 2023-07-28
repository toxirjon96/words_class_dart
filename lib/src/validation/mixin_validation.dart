mixin class MixinValidation {
  bool isLowerCaseString(String word) {
    RegExp lowercaseValidation = RegExp(r"[a-z]+");

    return lowercaseValidation.hasMatch(word);
  }
}
