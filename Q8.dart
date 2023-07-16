import 'dart:io';

main() {
  int senha = int.parse(stdin.readLineSync()!);

  do {
    senha = int.parse(stdin.readLineSync()!);
    print("senha incorreta");
  } while (senha != 123);
}
