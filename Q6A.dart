import "dart:io";

main() {
  print("Entre com dois valores");
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);

  for (int i = a; a <= b; a++) {
    print(a);
  }
}
