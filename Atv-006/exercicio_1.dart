import 'dart:io';
import 'dart:convert';

void main() {
  //Declarando um mapa
  Map<String, int> listaTelefonica = {};

  //laço while para manter o programa funcionando
  while (true) {
    //programa principal
//-=---=---=---=---=---=---=---=---=---=---=---=---=---=---=---=---=-
    //cabeçalho
    print('-' * 70);
    print('EXERCÍCIO C: WHILE, SWITCH IF');
    print('-' * 70);
    print('Escolha uma opção:');
    print('1 - Inserir nome e telefone');
    print('2 - Exibir lista nomes e telefones');
    print('3 - Sair do programa');
    //entrada de dados com casting
    int num = int.parse(stdin.readLineSync()!);
    //declaração de switch
    switch (num) {
      //case 1 para inserir um nome e telefone no arquivo
      case 1:
        //print
        stdout.write('Digite um nome: ');
        //entrada de dados
        String nome1 = stdin.readLineSync()!;
        //print
        stdout.write('Digite um número de telefone: ');
        //entrada de dados
        int telefone = int.parse(stdin.readLineSync()!);

        //condicional que confere se as entradas de dados são validas
        if (nome1.isNotEmpty && telefone != null) {
          listaTelefonica.putIfAbsent(nome1, () => telefone);
        }
        //chamada da função 'adicionar'
        adicionar(listaTelefonica);       
      break;
        

      //case 2 que varre e exibi os nomes e telefones do arquivo
      case 2:
        //forEach para a varredura
        listaTelefonica.forEach((key, value) {
          print('$key: $value');
        });
        //print
        print('Pressione Enter para continuar ou digite "sair" para sair do programa!');
        //entrada de dados
        String opcao = stdin.readLineSync()!;
        //conndicional que confere se o usuario encerrou o programa
        if (opcao == 'sair') {
          print('FIM DO PROGRAMA!');
          return;
        }
        break;

      case 3:
        print('FIM DO PROGRAMA!');
        //chamada da função 'adicionar'
        adicionar(listaTelefonica);
        return;
    }
  }
}

// funções 

// função que adiciona os nomes e telefones no arquivo json
void adicionar(Map<String, int> listaTelefonica) {
  final arquivo = File('../Atv-006/listaTelefonica_json1.txt');

  if (listaTelefonica.isNotEmpty) {
    dynamic mapa = listaTelefonica;
    final mapaCodificado = json.encode(mapa);
    arquivo.writeAsStringSync(mapaCodificado + '\n', mode: FileMode.append);
    print('Numero gravado com sucesso!');
  } else {
    print('Ocorreu um erro ao gravar o telefone');
  }
}