import 'dart:io';

class Pessoa {
  String nome;
  double peso;
  double altura;
  double imc;

  Pessoa(this.nome, this.peso, this.altura) {
    imc = calcularIMC();
  }

  double calcularIMC() {
    return peso / (altura * altura);
  }

  @override
  String toString() {
    return "$nome | Peso: $peso kg | Altura: $altura m | IMC: $imc";
  }
}

void main() {
  List<Pessoa> pessoas = [];

  print("Digite a quantidade de pessoas:");
  int quantidadePessoas = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < quantidadePessoas; i++) {
    print("Pessoa ${i + 1}:");
    print("Nome:");
    String nome = stdin.readLineSync()!;

    print("Peso (kg):");
    double peso = double.parse(stdin.readLineSync()!);

    print("Altura (m):");
    double altura = double.parse(stdin.readLineSync()!);

    Pessoa pessoa = Pessoa(nome, peso, altura);
    pessoas.add(pessoa);
  }

  print("\nLista de pessoas:");
  for (Pessoa pessoa in pessoas) {
    print(pessoa);
  }
}
