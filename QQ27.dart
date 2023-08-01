
import 'dart:io';

class Pilha<T> {
  List<T> _itens = [];

  bool get isEmpty => _itens.isEmpty;

  int get length => _itens.length;

  void push(T item) {
    _itens.add(item);
  }

  T? pop() {
    if (_itens.isNotEmpty) {
      return _itens.removeLast();
    }
    return null;
  }

  T? peek() {
    if (_itens.isNotEmpty) {
      return _itens.last;
    }
    return null;
  }
}

void main() {
  Pilha<int> pilhaInt = Pilha<int>();

  // Inserindo elementos na pilha de inteiros
  pilhaInt.push(1);
  pilhaInt.push(2);
  pilhaInt.push(3);

  // Exibindo o topo da pilha
  print("Topo da pilha de inteiros: ${pilhaInt.peek()}");

  // Removendo elementos da pilha de inteiros
  int? itemRemovido = pilhaInt.pop();
  if (itemRemovido != null) {
    print("Elemento removido da pilha de inteiros: $itemRemovido");
  }

  // Exibindo o topo da pilha após a remoção
  print("Topo da pilha de inteiros após remoção: ${pilhaInt.peek()}");

  // Verificando se a pilha de inteiros está vazia
  print("A pilha de inteiros está vazia? ${pilhaInt.isEmpty}");
}

