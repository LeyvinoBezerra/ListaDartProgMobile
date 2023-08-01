import 'dart:io';


List<int> reverseVector(List<int> original) {
  List<int> reversed = [];
  for (int i = original.length - 1; i >= 0; i--) {
    reversed.add(original[i]);
  }
  return reversed;
}

void main() {
  List<int> originalVector = [1, 2, 3, 4, 5];

  List<int> reversedVector = reverseVector(originalVector);

  print("Vetor Original: $originalVector");
  print("Vetor Reverso: $reversedVector");
}