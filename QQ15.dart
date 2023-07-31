import 'dart:io';

void main() {
  print("Digite o número de linhas da matriz:");
  int rows = int.parse(stdin.readLineSync()!);

  print("Digite o número de colunas da matriz:");
  int cols = int.parse(stdin.readLineSync()!);

  List<List<int>> matrix = readMatrix(rows, cols);

  print("\nMatriz informada:");
  printMatrix(matrix);
}

List<List<int>> readMatrix(int rows, int cols) {
  List<List<int>> matrix = [];
  for (int i = 0; i < rows; i++) {
    List<int> row = [];
    for (int j = 0; j < cols; j++) {
      print("Digite o elemento da posição ($i, $j):");
      int element = int.parse(stdin.readLineSync()!);
      row.add(element);
    }
    matrix.add(row);
  }
  return matrix;
}

void printMatrix(List<List<int>> matrix) {
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      stdout.write("${matrix[i][j]} ");
    }
    stdout.write("\n");
  }
}
