import 'dart:ffi';
import 'dart:io';

class Div{
  double? numero1;
  double? numero2;

  Div({this.numero1, this.numero2});

  double divisao(){
    double result = numero1! / numero2!;
    return result; 
  }
}

void main() {
  stdout.write('Digite o primeiro numero: ');
  double numero1 = double.parse(stdin.readLineSync()!);

  stdout.write('Digite o segundo numero: ');
  double numero2 = double.parse(stdin.readLineSync()!);

  Div divisao = Div(numero1: numero1, numero2: numero2);
  double resultado = divisao.divisao();
  print('${resultado.toStringAsFixed(4)}');
}