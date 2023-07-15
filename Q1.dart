import 'dart:io';

main() {
  print('entre com o seu Peso: ');
  double peso = double.parse(stdin.readLineSync()!);

  print('entre com sua altura:');
  double altura = double.parse(stdin.readLineSync()!);

  double imc = (peso / (altura * altura));

  print("Seu IMC: $imc");
}
