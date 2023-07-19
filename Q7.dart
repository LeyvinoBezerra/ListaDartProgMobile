import 'dart:io';

main() {
  print('Entre com dois valores');

  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  while (a <= b) {
    if (a % 2 != 0) {
      print(a);
      a++;
    }
  }
}
