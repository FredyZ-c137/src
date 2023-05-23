import 'dart:io';

void main() {
  //declarando uma lista vazia de resultados
  List<dynamic> resultados = [];

  //Loop infinito para o usuário poder realizar várias operações
  while (true) {
    //Exibe o menu para o usuário
    exibirMenu();

    //Recebe a opção escolhida pelo usuário
    String? opcao = stdin.readLineSync();

    //Verifica qual operação o usuário escolheu
    switch (opcao) {
      case '1':
        realizarOperacao(somar, resultados);
        break;
      case '2':
        realizarOperacao(subtrair, resultados);
        break;
      case '3':
        realizarOperacao(multiplicar, resultados);
        break;
      case '4':
        realizarOperacao(dividir, resultados);
        break;
      case '5':
        print('Fim do programa!');
        varreduraComMensagem(resultados, mensagem: 'Historico de resultados: ');
        return;
      default:
        print('Opção inválida, tente novamente.');
        break;
    }
  }
}

//Exibe o menu para o usuário
void exibirMenu() {
  print('Escolha uma das operações abaixo:');
  print('1 - Somar');
  print('2 - Subtrair');
  print('3 - Multiplicar');
  print('4 - Dividir');
  print('5 - Sair');
}

//Realiza a operação escolhida pelo usuário
void realizarOperacao(Function operacao, List<dynamic> resultados) {
  //Recebe os valores para a operação 
  stdout.write('Digite o primeiro número: ');
  double? valor1 = double.tryParse(stdin.readLineSync()!);
  stdout.write('Digite o segundo número: ');
  double? valor2 = double.tryParse(stdin.readLineSync()!);

  //Verifica se os valores foram recebidos corretamente
  if (valor1 == null || valor2 == null) {
    print('Valores inválidos, tente novamente.');
    return;
  }

  //Realiza a operação e exibe o resultado
  dynamic resultado = operacao(valor1, valor2);
  resultados.add(resultado);
  print('Resultado: $resultado');
}

//Funções matemáticas
double somar(double valor1, double valor2) {
  return valor1 + valor2;
}

double subtrair(double valor1, double valor2) {
  return valor1 - valor2;
}

double multiplicar(double valor1, double valor2) {
  return valor1 * valor2;
}

double dividir(double valor1, double valor2) {
  return valor1 / valor2;
}

//função anonima que varre a lista e exibi os elementos 
void varreduraComMensagem(List<dynamic> resultados, {String? mensagem}) {
  //condicional que confere se a variavel mensagem e nula
  if (mensagem != null) {
    print(mensagem);
  }
  //Uma função anônima que imprime cada elemento da lista
  resultados.forEach((elemento) => print(elemento));
}

//Funcionalidade

//Esse código Dart é um simples programa de calculadora que permite ao usuário 
//realizar operações matemáticas básicas (adição, subtração, multiplicação e divisão) 
//em um loop infinito. Ele exibe um menu de opções para o usuário escolher a operação desejada, 
//lê os números de entrada do usuário e realiza a operação escolhida, exibindo o resultado. 
//Ele também mantém um histórico de resultados e permite que o usuário visualize o histórico 
//antes de encerrar o programa. As funções matemáticas são definidas separadamente como funções 
//que recebem dois números e retornam o resultado da operação correspondente. 