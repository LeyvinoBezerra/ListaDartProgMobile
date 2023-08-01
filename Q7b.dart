import 'dart:io';

void main() {
  print("Digite o número inicial:");
  int numeroInicial = int.parse(stdin.readLineSync()!);

  print("Digite o número final:");
  int numeroFinal = int.parse(stdin.readLineSync()!);

  print("Sequência de números ímpares:");
  int numeroAtual = numeroInicial;
  do {
    if (numeroAtual % 2 != 0) {
      stdout.write("$numeroAtual ");
    }
    numeroAtual++;
  } while (numeroAtual <= numeroFinal);
  print(""); // Quebra de linha para finalizar a sequência.
}

