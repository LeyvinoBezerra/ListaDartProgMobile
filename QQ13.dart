import 'dart:io';

main() {
  int fat;
  print("Insira um valor para o qual deseja calcular seu fatorial: ");
  int n = int.parse(stdin.readLineSync()!);

  for (fat = 1; n > 1; n = n - 1) fat = fat * n;
  print("\nFatorial calculado:  $fat");
}
