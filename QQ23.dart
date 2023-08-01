import 'dart:io';
import 'package:csv/csv.dart';

void main() {
  print("Digite uma frase:");
  String sentence = stdin.readLineSync()!.toLowerCase();

  Map<String, int> wordCount = countWords(sentence);

  print("\nResultado:");
  for (String word in wordCount.keys) {
    print("$word=${wordCount[word]}");
  }

  salvarEmArquivoCSV(wordCount);

  Map<String, int>? wordCountLido = abrirArquivoCSV();
  if (wordCountLido != null) {
    print("\nConteúdo lido do arquivo:");
    for (String word in wordCountLido.keys) {
      print("$word=${wordCountLido[word]}");
    }
  } else {
    print("\nNão foi possível ler o arquivo.");
  }
}

Map<String, int> countWords(String sentence) {
  List<String> words = sentence.split(' ');
  Map<String, int> wordCount = {};

  for (String word in words) {
    if (wordCount.containsKey(word)) {
      wordCount[word] = wordCount[word]! + 1;
    } else {
      wordCount[word] = 1;
    }
  }

  return wordCount;
}

void salvarEmArquivoCSV(Map<String, int> wordCount) {
  File file = File('resultado.csv');
  List<List<dynamic>> rows = [];
  wordCount.forEach((word, count) {
    rows.add([word, count]);
  });
  String csv = const ListToCsvConverter().convert(rows);
  file.writeAsStringSync(csv);
  print("Arquivo salvo com sucesso!");
}

Map<String, int>? abrirArquivoCSV() {
  try {
    File file = File('resultado.csv');
    String csv = file.readAsStringSync();
    List<List<dynamic>> rows = const CsvToListConverter().convert(csv);
    Map<String, int> wordCount = {};
    for (var row in rows) {
      if (row.length >= 2) {
        String word = row[0];
        int count = int.tryParse(row[1].toString()) ?? 0;
        wordCount[word] = count;
      }
    }
    return wordCount;
  } catch (e) {
    print("Erro ao abrir o arquivo: $e");
    return null;
  }
}
