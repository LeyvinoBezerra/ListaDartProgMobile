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

  Map<String, dynamic> toJson() {
    return {
      'nome': nome,
      'peso': peso,
      'altura': altura,
      'imc': imc,
    };
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

  salvarEmArquivoBinario(pessoas);

  List<Pessoa>? pessoasLidas = abrirArquivoBinario();
  if (pessoasLidas != null) {
    print("\nConteúdo lido do arquivo:");
    for (Pessoa pessoa in pessoasLidas) {
      print(pessoa);
    }
  } else {
    print("\nNão foi possível ler o arquivo.");
  }
}

void salvarEmArquivoBinario(List<Pessoa> pessoas) {
  File file = File('pessoas.bin');
  List<Map<String, dynamic>> jsonList = pessoas.map((pessoa) => pessoa.toJson()).toList();
  file.writeAsBytesSync(List<int>.from(jsonList.toString().codeUnits));
  print("Arquivo salvo com sucesso!");
}

List<Pessoa>? abrirArquivoBinario() {
  try {
    File file = File('pessoas.bin');
    List<int> bytes = file.readAsBytesSync();
    String jsonString = String.fromCharCodes(bytes);
    List<dynamic> jsonList = eval(jsonString);
    List<Pessoa> pessoas = [];
    for (var json in jsonList) {
      Pessoa pessoa = Pessoa(json['nome'], json['peso'], json['altura']);
      pessoa.imc = json['imc'];
      pessoas.add(pessoa);
    }
    return pessoas;
  } catch (e) {
    print("Erro ao abrir o arquivo: $e");
    return null;
  }
}

