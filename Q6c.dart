import 'dart:io';

void main() {
  print("Digite o número inicial:");
  int numeroInicial = int.parse(stdin.readLineSync()!);

  print("Digite o número final:");
  int numeroFinal = int.parse(stdin.readLineSync()!);

  print("Sequência:");
  for (int i = numeroInicial; i <= numeroFinal; i++) {
    stdout.write("$i ");
  }
  print(""); // Quebra de linha para finalizar a sequência.
}

