import 'dart:io';
import 'dart:convert';

void main() {
  Map<String, int> listaTelefonica = {};

  while (true) {
    print('-' * 70);
    print('EXERCÍCIO C: WHILE, SWITCH IF');
    print('-' * 70);
    print('Escolha uma opção:');
    print('1 - Inserir nome e telefone');
    print('2 - Exibir lista nomes e telefones');
    print('3 - Sair do programa');

    int num = int.parse(stdin.readLineSync()!);

    switch (num) {
      case 1:
        stdout.write('Digite um nome: ');
        String nome1 = stdin.readLineSync()!;
        stdout.write('Digite um número de telefone: ');
        int telefone = int.parse(stdin.readLineSync()!);

        if (nome1.isNotEmpty && telefone != null) {
          listaTelefonica.putIfAbsent(nome1, () => telefone);
        }
        print('Pressione Enter para continuar ou digite "sair" para sair do programa!');
        String opcao = stdin.readLineSync()!;
        adicionar(listaTelefonica);
        if (opcao == 'sair') {
          print('FIM DO PROGRAMA!');
          adicionar(listaTelefonica);
          return;
        }
        break;

      case 2:
        listaTelefonica.forEach((key, value) {
          print('$key: $value');
        });
        print('Pressione Enter para continuar ou digite "sair" para sair do programa!');
        String opcao = stdin.readLineSync()!;
        adicionar(listaTelefonica);
        if (opcao == 'sair') {
          print('FIM DO PROGRAMA!');
          adicionar(listaTelefonica);
          return;
        }
        break;

      case 3:
        print('FIM DO PROGRAMA!');
        adicionar(listaTelefonica);
        return;
    }
  }
}

void adicionar(Map<String, int> listaTelefonica) {
  final arquivo = File('./arquivo/teste_json.txt');

  if (listaTelefonica.isNotEmpty) {
    dynamic mapa = listaTelefonica;
    final mapaCodificado = json.encode(mapa);
    arquivo.writeAsStringSync(mapaCodificado + '\n', mode: FileMode.append);
    print('Cálculo gravado com sucesso!');
  } else {
    print('Ocorreu um erro ao gravar o resultado');
  }
}