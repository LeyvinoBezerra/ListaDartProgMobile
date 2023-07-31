import 'dart:io';

int calcularFatorial(int n) {
  if (n == 0 || n == 1) {
    return 1;
  } else {
    return n * calcularFatorial(n - 1);
  }
}

void main() {
  print("Digite um número para calcular o fatorial:");
  int numero = int.parse(stdin.readLineSync()!);

  if (numero < 0) {
    print("O fatorial não está definido para números negativos.");
  } else {
    int resultado = calcularFatorial(numero);
    print("O fatorial de $numero é $resultado.");
  }
}
