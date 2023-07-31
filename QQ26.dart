import 'dart:io';

class CRUD<T> {
  List<T> _items = [];

  void create(T item) {
    _items.add(item);
  }

  List<T> read() {
    return List.from(_items);
  }

  void update(int index, T newItem) {
    if (index >= 0 && index < _items.length) {
      _items[index] = newItem;
    }
  }

  void delete(int index) {
    if (index >= 0 && index < _items.length) {
      _items.removeAt(index);
    }
  }
}

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  @override
  String toString() {
    return "Nome: $nome, Idade: $idade";
  }
}

void main() {
  CRUD<Pessoa> pessoaCRUD = CRUD<Pessoa>();

  // Criando algumas pessoas
  pessoaCRUD.create(Pessoa("João", 30));
  pessoaCRUD.create(Pessoa("Maria", 25));
  pessoaCRUD.create(Pessoa("Pedro", 40));

  // Listando as pessoas
  print("Lista de pessoas:");
  List<Pessoa> pessoas = pessoaCRUD.read();
  for (Pessoa pessoa in pessoas) {
    print(pessoa);
  }

  // Atualizando a idade de uma pessoa
  pessoaCRUD.update(1, Pessoa("Maria", 26));

  // Exibindo a lista atualizada
  print("\nLista de pessoas atualizada:");
  pessoas = pessoaCRUD.read();
  for (Pessoa pessoa in pessoas) {
    print(pessoa);
  }

  // Deletando uma pessoa
  pessoaCRUD.delete(0);

  // Exibindo a lista após deletar
  print("\nLista de pessoas após deletar:");
  pessoas = pessoaCRUD.read();
  for (Pessoa pessoa in pessoas) {
    print(pessoa);
  }
}
