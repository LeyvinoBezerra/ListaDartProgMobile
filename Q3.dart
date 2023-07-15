import 'dart:io';

main() {
  print("Digite a primeira nota:");
  double N1 = double.parse(stdin.readLineSync()!);

  print("Digite a Segunda nota:");
  double N2 = double.parse(stdin.readLineSync()!);

  print("Digite a segunda nota:");
  double N3 = double.parse(stdin.readLineSync()!);

  double MediaParcial = (2 * N1 + 3 * N2 + 4 * N3) / 9;

  double P4 = (50 - MediaParcial * 7) / 3;

  print("A Media é: $MediaParcial");

  if (MediaParcial >= 0 && MediaParcial <= 3.5) {
    print("Reprovado:");
    ;
  }
  if (MediaParcial > 3.5 && MediaParcial < 7) {
    print("Quarta Prova: ");
    print("Vai precisar:$P4");
  }
  if (MediaParcial >= 7) {
    print("Aprovado:");
  }
}
