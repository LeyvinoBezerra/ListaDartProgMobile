import 'dart:io';

void main() {
  print("Digite uma palavra:");
  String word = stdin.readLineSync()!.toLowerCase();

  Map<String, int> letterCount = countLetters(word);

  print("\nResultado:");
  for (String letter in letterCount.keys) {
    print("$letter = ${letterCount[letter]}");
  }
}

Map<String, int> countLetters(String word) {
  Map<String, int> letterCount = {};

  for (int i = 0; i < word.length; i++) {
    String letter = word[i];
    if (letterCount.containsKey(letter)) {
      letterCount[letter] = letterCount[letter]! + 1;
    } else {
      letterCount[letter] = 1;
    }
  }

  return letterCount;
}
