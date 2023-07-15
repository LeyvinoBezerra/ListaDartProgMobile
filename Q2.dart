import 'dart:io';
import 'dart:math';

main() {
  print('-----------------');
  print("-AREA DO CIRCULO-");
  print("-----------------");
  print("Entre Com o Raio:");
  double raio = double.parse(stdin.readLineSync()!);

  if (raio < 0) {
    print("Raio nao pode ser menor que zero!");
  } else {
    double area = pi * (raio * raio);
    print("Área do Caculo é  $area");
  }
}
