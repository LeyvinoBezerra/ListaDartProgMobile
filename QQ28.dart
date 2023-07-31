import 'dart:io';

bool validarParenteses(String str) {
  List<String> pilha = [];

  for (int i = 0; i < str.length; i++) {
    String char = str[i];

    if (char == '(') {
      pilha.add(char);
    } else if (char == ')') {
      if (pilha.isEmpty || pilha.last != '(') {
        return false;
      }
      pilha.removeLast();
    }
  }

  return pilha.isEmpty;
}

void main() {
  String str1 = "()";
  String str2 = "()()";
  String str3 = "(a)b";
  String str4 = "(a)(b)";
  String str5 = "((";
  String str6 = "(a)(b";
  String str7 = ")(";
  String str8 = ")a()b(";

  print("String: $str1 => ${validarParenteses(str1)}");
  print("String: $str2 => ${validarParenteses(str2)}");
  print("String: $str3 => ${validarParenteses(str3)}");
  print("String: $str4 => ${validarParenteses(str4)}");
  print("String: $str5 => ${validarParenteses(str5)}");
  print("String: $str6 => ${validarParenteses(str6)}");
  print("String: $str7 => ${validarParenteses(str7)}");
  print("String: $str8 => ${validarParenteses(str8)}");
}
