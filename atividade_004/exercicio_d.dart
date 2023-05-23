import 'dart:io';
void main() {
   //Declaração de mapa vazio
   Map<String, dynamic> mapnumeros = {
  }; 
    //laço for que pede ao usuario o nome e preço do produto
    for (var i = 1; i < 6; i++){
      //print
      stdout.write('Digite o nome do $iº produto:');
      //entrada de dados
      String? nome = stdin.readLineSync()!;
      //print
      stdout.write('Digite o valor do $iº produto: ');
      //entrada de dados
      double num = double.parse(stdin.readLineSync()!);
      //função que adiciona a chave e o valor digitados no mapa
      mapnumeros.putIfAbsent(nome, () => num);
    } 
      print('Produtos     valores');
      //varredura com foreach do mapa
      mapnumeros.forEach((key, value) { 
      //saida de dados formatada
      print('$key       RS$value');
    });
}