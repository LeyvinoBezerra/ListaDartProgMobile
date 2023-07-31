import 'dart:io';

void main() {
  print("Digite os elementos do vetor separados por espaço:");
  String input = stdin.readLineSync()!;
  List<int> numbers = input.split(' ').map(int.parse).toList();

  if (numbers.isNotEmpty) {
    int max = findMax(numbers);
    int min = findMin(numbers);

    print("Maior número: $max");
    print("Menor número: $min");
  } else {
    print("Vetor vazio! Insira pelo menos um elemento.");
  }
}

int findMax(List<int> numbers) {
  int max = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > max) {
      max = numbers[i];
    }
  }
  return max;
}

int findMin(List<int> numbers) {
  int min = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] < min) {
      min = numbers[i];
    }
  }
  return min;
}
