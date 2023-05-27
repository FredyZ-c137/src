import 'dart:io';

class Calculos {
  double? num1;
  double? num2;
  List<dynamic>? resultados;

  Calculos({this.num1, this.num2, this.resultados});

  double soma() {
    return num1! + num2!;
  }

  double produto() {
    return num1! * num2!;
  }

  double subtracao() {
    return num1! - num2!;
  }

  double divisao() {
    return num1! / num2!;
  }
}

void main() {
  List<Calculos> resultado = [];
  while(true){
    menu();
    int opcao = int.parse(stdin.readLineSync()!);

    switch (opcao) {
      case 1:
        print('Digite o primeiro número: ');
        double num1 = double.parse(stdin.readLineSync()!);

        print('Digite o segundo número: ');
        double num2 = double.parse(stdin.readLineSync()!);

        Calculos result = Calculos(num1: num1, num2: num2);
        double soma = result.soma();

        List<dynamic> interesses = [soma];

        Calculos resultados =
            Calculos(num1: num1, num2: num2, resultados: interesses);
        resultado.add(resultados);

        print('O resultado é $soma');
        break;

        case 2:
          print('Digite o primeiro número: ');
          double num1 = double.parse(stdin.readLineSync()!);

          print('Digite o segundo número: ');
          double num2 = double.parse(stdin.readLineSync()!);

          Calculos result = Calculos(num1: num1, num2: num2);
          double produto = result.produto();

          List<dynamic> interesses = [produto];

          Calculos resultados =
              Calculos(num1: num1, num2: num2, resultados: interesses);
          resultado.add(resultados);

          print('O resultado é $produto');
        break;

        case 3:
          print('Digite o primeiro número: ');
          double num1 = double.parse(stdin.readLineSync()!);

          print('Digite o segundo número: ');
          double num2 = double.parse(stdin.readLineSync()!);

          Calculos result = Calculos(num1: num1, num2: num2);
          double subtracao = result.subtracao();

          List<dynamic> interesses = [subtracao];

          Calculos resultados =
              Calculos(num1: num1, num2: num2, resultados: interesses);
          resultado.add(resultados);

          print('O resultado é $subtracao');
        break;

        case 4:
          print('Digite o primeiro número: ');
          double num1 = double.parse(stdin.readLineSync()!);

          print('Digite o segundo número: ');
          double num2 = double.parse(stdin.readLineSync()!);

          Calculos result = Calculos(num1: num1, num2: num2);
          double divisao = result.divisao();

          List<dynamic> interesses = [divisao];

          Calculos resultados =
              Calculos(num1: num1, num2: num2, resultados: interesses);
          resultado.add(resultados);

          print('O resultado é $divisao');
        break;

        case 5:
        print('Resultados:');
        for (var calculo in resultado) {
          for (var resultado in calculo.resultados!) {
            print(resultado);
          }
        }
        return;
      default:
        print('Opção inválida!');         
    }
  }
}

void menu() {
  print('1 - soma');
  print('2 - produto');
  print('3 - subtração');
  print('4 - Divisão');
  print('Ou "5" para encerrar o programa\ne exibir os resultados!');
}