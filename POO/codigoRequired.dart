import 'dart:io';

class Pessoa {
  String nome;
  int idade;

  // Construtor nomeado
  Pessoa({required this.nome, required this.idade});
}

void main() {
  //O generic contém a classe Pessoa, ou seja, uma lista de objetos pessoas.
  List<Pessoa> pessoas = [];

  //Entrada de dados
  print('');
  for (int i = 1; i <= 3; i++) {
    print('Lista de Pessoas $i');

    //Solicita o nome 
    stdout.write('Nome: ');
    String nome = stdin.readLineSync()!;
    //Solicita a idade
    stdout.write('Idade: ');
    int idade = int.parse(stdin.readLineSync()!);

    //Cria uma nova pessoa e adiciona à lista
    Pessoa novaPessoa = Pessoa(nome: nome, idade: idade);
    pessoas.add(novaPessoa);

    print(''); // Pula uma linha
  }
}