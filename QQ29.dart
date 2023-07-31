bool saoAnagramas(String s1, String s2) {
  if (s1.length != s2.length) {
    return false;
  }

  List<String> chars1 = s1.split('')..sort();
  List<String> chars2 = s2.split('')..sort();

  return chars1.join() == chars2.join();
}

void main() {
  String s1 = "PATO";
  String s2 = "TOPA";
  String s3 = "OPTA";
  String s4 = "CASA";
  String s5 = "ABCD";

  print("São anagramas? ${saoAnagramas(s1, s2)}"); // true
  print("São anagramas? ${saoAnagramas(s1, s3)}"); // true
  print("São anagramas? ${saoAnagramas(s1, s4)}"); // false
  print("São anagramas? ${saoAnagramas(s1, s5)}"); // false
}
