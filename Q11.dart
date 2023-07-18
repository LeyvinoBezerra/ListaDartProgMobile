import 'dart:io';

main() {
  int Num2;

  print(" saber se o numero e Primo:");
  int Num1 = int.parse(stdin.readLineSync()!);

  Num2 = Num1;

  for (; Num2 > 0; Num2--) {
    if (Num1 % Num2 == 0 && Num1 != Num2 || Num1 == 1) {
      print("O Numero nao eh primo ");
      break;
    } else if (Num2 == 2) {
      print("O Numero eh Primo");
      break;
    }
  }
}
