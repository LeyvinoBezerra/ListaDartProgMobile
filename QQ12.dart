import 'dart:io';

main() {
  int soma = 0;

  print("Entre com dois valores");
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  while (a <= b) {
    soma += a;
    a++;
  }

  print(soma);
}
