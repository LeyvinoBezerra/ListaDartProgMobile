import 'dart:io';

main() {
  int n, i, r;

  for (n = 1; n <= 10; n++) {
    print("tabuada do $n");

    for (i = 1; i <= 10; i++) {
      r = i * n;
      print("$i x $n = $r");
    }
  }
}
