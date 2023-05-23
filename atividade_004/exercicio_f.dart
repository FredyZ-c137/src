import 'dart:io';
void main() {
  //Declaração de chaves e valores do mapa
  Map<String, String> mapresostas = {
    'Qual a capital do Sergipe?': 'aracaju',
    'Qual a capital do Piauí?': 'teresina',
    'Qual a capital do Tocantins?': 'palmas'
  };
  //laço while 
  while (true) {
    //cabeçalho
    print('-'*70);
    print('EXERCICIO F: WHILE, IF, FOR IN');
    print('-'*70);
    //transformando as chaves do mapa em uma lista
    List<String> chaves = mapresostas.keys.toList();
    //embalharando as chaves
    chaves.shuffle();
    //variaveis contadoras
    int i = 0;
    int r = 0;
    //laço for in pra varrer a lista e exibir a chave no print abaixo
    for (String chave in chaves) {
      //*
      print('$chave');
      //entrada de dados  
      String? resposta = stdin.readLineSync()!;
      //soma da variavel contadora
      r ++;
      //condicional que confere se a resposta do usuario coincide com a chave
      if (mapresostas[chave] == resposta) {
        print('resposta correta!');
        //variavel contadora de acertos
        i ++;
      } else {
        print('resposta incorreta');
      }
      //condicional que confere se o usuario terminol o quiz
      if (r == 3) {
        print('Você acertou $i perguntas de um total de 3');
        //pergunta se o usuario deseja continuar o quiz ou encerrar o codigo
        print('Deseja continuar? (sim/não)');
        //entrada de dados
        String? continuar = stdin.readLineSync()!;
        //condicional que confere se o usuario digitou 'sim' ou 'não'
        if (continuar == 'sim') {
          continue;
        } else {
          return;
        }
      }
    }
  }
}
