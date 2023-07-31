import 'dart:io';
void main() {
  print("Digite uma frase:");
  String sentence = stdin.readLineSync()!.toLowerCase();

  Map<String, int> wordCount = countWords(sentence);

  print("\nResultado:");
  for (String word in wordCount.keys) {
    print("$word=${wordCount[word]}");
  }
}

Map<String, int> countWords(String sentence) {
  List<String> words = sentence.split(' ');
  Map<String, int> wordCount = {};

  for (String word in words) {
    if (wordCount.containsKey(word)) {
      wordCount[word] = wordCount[word]! + 1;
    } else {
      wordCount[word] = 1;
    }
  }

  return wordCount;
}
