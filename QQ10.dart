import 'dart:io';

void main() {
  print("Digite o investimento inicial:");
  double investimentoInicial = double.parse(stdin.readLineSync()!);

  print("Digite o investimento mensal:");
  double investimentoMensal = double.parse(stdin.readLineSync()!);

  print("Digite a taxa de juros mensal (em decimal):");
  double taxaDeJurosMensal = double.parse(stdin.readLineSync()!);

  print("Digite a quantidade de meses:");
  int quantidadeDeMeses = int.parse(stdin.readLineSync()!);

  double saldoAcumulado = investimentoInicial;

  for (int i = 1; i <= quantidadeDeMeses; i++) {
    double rendimentoMensal =
        (saldoAcumulado + investimentoMensal) * taxaDeJurosMensal;
    saldoAcumulado = saldoAcumulado + investimentoMensal + rendimentoMensal;
  }

  print("Saldo acumulado após $quantidadeDeMeses meses: $saldoAcumulado");
}
