import 'dart:io';

main() {
  print("entre com um numero de um a cinco");
  int num = int.parse(stdin.readLineSync()!);
  switch (num) {
    case 1:
      print("Um");
      break;
    case 2:
      print("Dois");
      break;
    case 3:
      print("Tręs");
      break;
    case 4:
      print("Quatro");
      break;
    case 5:
      print("Cinco");
      break;
    default:
      print("Valor inválido");
  }
}
