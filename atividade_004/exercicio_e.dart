import 'dart:io';
void main() {
  //Declaração de mapa vazio
  Map<String, dynamic> mapnumeros = {
  };
    print('Digite o nome do 1 aluno');
    //entrada de dados
    String? nomeAluno = stdin.readLineSync()!;
    //laço for que pede ao usuario as notas do aluno
    for (var i = 1; i < 5; i++){
      //print
      stdout.write('Digite a $iº nota: ');
      //entrada de dados com casting
      double num = double.parse(stdin.readLineSync()!);
      //parte responsavel por criar uma chave para o valor digitado pelo usuario
      String? chave = 'nota $i';
      //adicional o valor digitado na chave gerada
      mapnumeros[chave] = num;
    } 
    //função reduce para somar os valores do mapa
    dynamic soma = mapnumeros.values.reduce((v, e) => v + e);
    //divição simples pra saber a media
    dynamic div = soma / 4;

    //saida de dados formatada
    print('A media de $nomeAluno é $div');
    
}