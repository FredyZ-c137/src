import 'dart:io';
void main() {

  Map<String, int> CienciasExatas = {
    'quanto e 1 + 1': 2,
    'quanto e 1 + 2': 3,
    'quanto e 1 + 3': 4,
    'quanto e 1 + 4': 5,
    'quanto e 1 + 5': 6,
    'quanto e 1 + 6': 7,
    'quanto e 1 + 7': 8,
    'quanto e 1 + 8': 9,
    'quanto e 1 + 9': 10,
    'quanto e 1 + 10': 11,
    'quanto e 1 + 11': 12,
    'quanto e 1 + 12': 13,
    'quanto e 1 + 13': 14,
    
  }; 
  Map<String, String> CienciasNatureza = {
    
  }; 
  Map<String, String> PortLiteral = {
    
  }; 
  Map<String, String> LinguaEstrangeira = {
    
  }; 

  while(true){
    print('Enem 2023');
    //mini enem 
    //4 provas de diferentes areas 
    //media das notas e os cursos possiveis com a nota do usuario
    print('Escolha Uma das provas abaixo');
    print('1 - Ciencias exatas');
    print('2 - Ciencias da natureza');
    print('3 - Portugues e literatura');
    print('4 - lingua estrangeira');
    int opcao = int.parse(stdin.readLineSync()!);

    switch(opcao){
      case 1:
        //Função void
          void embaralharPerguntas(Map<String, int> perguntas) {
          dynamic chaves = perguntas.keys.toList();
          chaves.shuffle();
          dynamic perguntasEmbaralhadas = Map.fromIterable(chaves, key: (k) => k, value: (k) => perguntas[k]);
          perguntas.clear();
          perguntas.addAll(perguntasEmbaralhadas);
        }

        int i = 0;
        int CE = 0;
        //Chamada da função
        embaralharPerguntas(CienciasExatas);
        
        for (String chave in CienciasExatas.keys) {
          
          print('$chave'); 

          int resposta = int.parse(stdin.readLineSync()!);
          CE ++;
          if (CienciasExatas[chave] == resposta) {
            print('resposta correta!');
            //variavel contadora de acertos
            i ++;
          } else {
            print('resposta incorreta');
          }
          //condicional que confere se o usuario terminol o quiz
          if (CE == 10) {
            print('Você acertou $i Questões de um total de 10');
            //pergunta se o usuario deseja continuar o quiz ou encerrar o codigo
            continue;
          }
        }
      break;

      case 2:
      
      break;

      case 3:
      
      break;

      case 4:
      
      break;

      case 5:

      break;
    }
  }  
} 