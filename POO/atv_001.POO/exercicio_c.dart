import 'dart:io';

class idade{
  int? ano;
  int? anoAtual;


  idade({this.ano, this.anoAtual = 2023});

  int calculoIdade(){

    return anoAtual! - ano!;
  }
}

void main() {
  print('Digite o ano: ');
  int ano = int.parse(stdin.readLineSync()!);

  idade Ano = idade(ano: ano);
  int Idade = Ano.calculoIdade(); 
  print(Idade);
}