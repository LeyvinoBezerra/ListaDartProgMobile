import 'dart:io';

void main() {
  print("Digite o número inicial:");
  int numeroInicial = int.parse(stdin.readLineSync()!);

  print("Digite o número final:");
  int numeroFinal = int.parse(stdin.readLineSync()!);

  print("Sequência de números ímpares:");
  for (int i = numeroInicial; i <= numeroFinal; i++) {
    if (i % 2 != 0) {
      stdout.write("$i ");
    }
  }
  print(""); // Quebra de linha para finalizar a sequência.
}

