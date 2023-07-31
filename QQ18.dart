import 'dart:io';

void main() {
  print("Digite uma frase:");
  String input = stdin.readLineSync()!;

  String reversedString = reverseString(input);

  print("Frase invertida: $reversedString");
}

String reverseString(String input) {
  List<String> words = input.split(' ');
  List<String> reversedWords = [];

  for (int i = words.length - 1; i >= 0; i--) {
    reversedWords.add(words[i]);
  }

  return reversedWords.join(' ');
}
