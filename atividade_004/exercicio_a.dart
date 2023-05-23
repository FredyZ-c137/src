import 'dart:io';
void main() {
  //Declaração de Mapa vazio
  Map<String, dynamic> mapnumeros = {
  };
    //laço for que printa a pergunta pro usuario
    for (var i = 1; i < 11; i++){
      //print 
      stdout.write('Digite o $iº numero inteiro: ');
      //entra de dados com um casting para mudar o tipo da variavel de um String pra um int
      int num = int.parse(stdin.readLineSync()!);
      //parte responsavel por criar uma chave para o valor digitado pelo usuario
      String? chave = 'Número $i';
      //atribuição do valor digita para a chave gerada
      mapnumeros[chave] = num;
    } 

    print('Numeros digitados: ');
    //Varredura com foreach para printar as chaves e os valores do mapa
    mapnumeros.forEach((chave, value) { 
      print('$chave: $value');
    });
    print('-'*70);
    print('FIM DO PROGRAMA!');
    print('-'*70);
  }
  
    
