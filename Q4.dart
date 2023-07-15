import 'dart:io';
import 'dart:math';

main() {
  int d = -4;
  double r2, r1;

  print("Seja bem vindo a Calculadora de Equacaoes do 2 Grau !");
  print("Digite o termo a: ");
  int a = int.parse(stdin.readLineSync()!);
  print("Digite o termo b: ");
  int b = int.parse(stdin.readLineSync()!);
  print("Digite o termo c: ");
  int c = int.parse(stdin.readLineSync()!);

  print("");

  print("APLICACAO DA FORMULA DE BASKARA: ");
  print("Resolucao da Formula de BAskara: b²-4.a.c ");
  print("Resolucao da Formula de BAskara:  $b   $d  $a $c");
  int b2 = b * b;
  int v2 = ((-4) * (a) * (c));
  int delta = (b * b) + ((-4) * (a) * (c));
  if (v2 > 0) {
    print("Resolucaoo da Formula de Baskara: $b2 $v2");
  } else
    print("Resolucao da Formula de Baskara: $b2  $v2");
  print("Resolucao da Formula de Baskara:  ($delta)");

  print("");

  print("Resultados das raizes: ");
  if (delta < 0) {
    print("Nao existe raiz real, Delta=0");
  } else {
    double r1 = (-b + sqrt(delta)) / (2 * a);
    print("A 1 raiz X1: $r1");
    double r2 = (-b - sqrt(delta)) / (2 * a);
    print("A 2 raiz X2: $r2");
  }
}
