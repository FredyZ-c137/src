import 'dart:io';

class calculos{
  double? num1;
  double? num2;
  
  calculos({this.num1, this.num2});

  double soma(){
    return num1! + num2!;
  }

  double produto(){
    return num1! * num2!;
  }

  double subtracao(){
    return num1! - num2!;
  }

  double divisao(){
    return num1! / num2!;
  }

  double restoDivisao(){
    return num1! % num2!;
  }

  int DivInteira(){
    return num1! ~/ num2!;
  }
}

void main() {
    print('Digite o primeiro numero: ');
    double num1 = double.parse(stdin.readLineSync()!);

    print('Digite o segundo numero: ');
    double num2 = double.parse(stdin.readLineSync()!);

    calculos result = calculos(num1: num1, num2: num2);
    double soma = result.soma();
    print('A soma de $num1 + $num2 = $soma');
    double produto = result.produto();
    print('O produto de $num1 x $num2 = $produto'); 
    double subtracao = result.subtracao();
    print('A subtração de $num1 - $num2 = $subtracao');
    double divisao = result.divisao();
    print('A divisão de $num1 / $num2 = $divisao');
    double restoDivisao = result.restoDivisao();
    print('O resto da divisão de $num1 / $num2 = $restoDivisao');
    int DivInteira = result.DivInteira();
    print('A Divisão inteira de  $num1 / $num2 = $DivInteira');
}