import 'dart:io';

void main() {
  // Defina a senha correta aqui
  String senhaCorreta = "senha123";

  String senhaInformada;
  print("Digite a senha:");
  senhaInformada = stdin.readLineSync()!;

  while (senhaInformada != senhaCorreta) {
    print("Senha incorreta. Tente novamente:");
    senhaInformada = stdin.readLineSync()!;
  }

  print("Senha correta");
}
