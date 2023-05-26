import 'dart:io';

class Aluno {
  String nome;
  //Atributos do tipo Map
  Map<String, double> notas;

  Aluno({required this.nome, required this.notas});

  double calcularMedia() {
    double soma = 0;

    // Soma as notas
    for (var nota in notas.values) {
      soma += nota;
    }

    //Calcula a média
    double media = soma / notas.length;
    return media;
  }
}

void main() {
  List<Aluno> alunos = [];

  for (int i = 1; i <= 3; i++) {
    print('$iº Aluno(a)');

    // Solicita o nome do aluno
    stdout.write('Nome: ');
    String nome = stdin.readLineSync()!;
    //Cria um mapa vazio para armazenar as notas
    Map<String, double> notas = {};

    //Solicia as notas do aluno
    for(int j = 1; j <= 4; j++) {
      stdout.write('Nota $j: ');
      double nota = double.parse(stdin.readLineSync()!);
      notas['Nota $j'] = nota;
    }

    //Cria um novo aluno com o nome e as notas fornecidas
    Aluno novoAluno = Aluno(nome: nome, notas: notas);
    alunos.add(novoAluno);

    print(''); // Pula uma linha
  }

  //Exibe os dados dos alunos
  print('Dados dos alunos: ');
  for(var aluno in alunos) {
    print('Nome: ${aluno.nome}');
    print('Notas: ${aluno.notas}');
    print('Média: ${aluno.calcularMedia()}');
    print(''); //Pula uma linha
  }
}