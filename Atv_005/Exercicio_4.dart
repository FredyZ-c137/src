import 'dart:io';
import 'dart:math';
void main() {
  //declaração de lista vazia
  List<dynamic> historico = [

  ];
  //laço while pra segurar o codigo
  while(true){
    //chamada da função de exibir menu
    exibirMenu();
    //entrada de dados com nullsafety
    String? opcao = stdin.readLineSync();
    //switch
    switch(opcao){    
      //case de calculo da area do octogono
      case '1':
        print('Digite o comprimento de um dos lados');
        //entrada de dados com casting
        double comprimentoDoLado = double.parse(stdin.readLineSync()!);
        //chama a função calcularAreaOctogono e atribui o valor retornado por ela
        double area = calcularAreaOctogono(comprimentoDoLado);
        //saida de dados
        print("A área do octógono é ${area.toStringAsFixed(2)}");
        //metodo pra adicionar o resultado na lista historico 
        historico.add('${area.toStringAsFixed(2)}');
      break;
      //case de calculo da área do pentagono
      case '2':
        stdout.write('Digite o valor de um lado do pentagono ');
        //entrada de dados com casting
        int lado = int.parse(stdin.readLineSync()!);
        stdout.write('Digite o valor da apótema do pentagono ');
        //entrada de dados com casting
        int apotema = int.parse(stdin.readLineSync()!);
        //chama a função calcularAreaPentagono e atribui o valor retornado por ela
        dynamic areapenta = calcularAreaPentagono(lado, apotema);
        //metodo pra adicionar o resultado na lista historico
        historico.add('${areapenta.toStringAsFixed(2)}');
      break;
      //case de calculo da área do triangulo
      case '3':
        stdout.write('Digite o valor da base do seu triangulo ');
        //entrada de dados com casting
        int base = int.parse(stdin.readLineSync()!);
        stdout.write('Digite o valor da altura do seu triangulo ');
        //entrada de dados com casting
        int altura = int.parse(stdin.readLineSync()!);
        //chama a função calcularAreatriangulo e atribui o valor retornado por ela
        dynamic areatriangulo = calcularAreatriangulo(base, altura);
        //metodo pra adicionar o resultado na lista historico
        historico.add('${areatriangulo.toStringAsFixed(2)}');
      break;

      case '4':
        //chamada da função que exibi o historioco
        exibirHistorico(historico);
        break;
      

      case '5':
        //fim do programa e return pra quebrar o laço
        print('Fim do programa!');
        varreduraComMensagem(historico, mensagem: 'Historico de resultados: ');
        return;

      default:
        print('Opção inválida, tente novamente.');
      break;
    }
} 
}

//Funções
double calcularAreaOctogono(double s) {
  // s é o comprimento do lado do octógono3
  double area = 2 * s * s * (1 + sqrt(2)); // cálculo da área do octogono
  return area;
}
dynamic calcularAreaPentagono(lado, apotema) {
  double areapenta = (5 * lado * apotema)/2;//calculo da área do pentagono
  print('A área do pentagono é ${areapenta.toStringAsFixed(2)}');
  return areapenta;
}

dynamic calcularAreatriangulo(base, altura) {
  double areatriangulo = (base * altura) / 2; //calculo da área do triangulo
  print('A área do triangulo é ${areatriangulo.toStringAsFixed(2)}');
  return areatriangulo;
}


void exibirMenu() {
  print('Escolha uma das opções abaixo:');
  print('1 - Calcular a area de um octogono');
  print('2 - Calcular a area de um pentagono');
  print('3 - Calcular a area de um triangulo');
  print('4 - Exibir histórico de conversões');
  print('5 - Sair');
}

//função com parametro opcional
varreduraComMensagem(List<dynamic> historico, {String? mensagem}) {
  //condicional que confere se o variavel mensagem e nula
  if (mensagem != null) {
    print(mensagem);
  }
  //varredura com for each
  historico.forEach((elemento) => print(elemento));
}

//função anonima que exibi os items da lista usando uma varredura com foreach
exibirHistorico(List<dynamic> historico) {
  if (historico.isEmpty) {
    print('Histórico vazio.');
  } else {
    historico.forEach((item) => print(item));
  }
}

//medidor de areas

//exercicio 4
//Este código em Dart apresenta um menu interativo para cálculo de áreas de figuras 
//geométricas, tais como octógono, pentágono e triângulo. Ele usa funções para realizar os 
//cálculos e armazenar os resultados em um histórico, que pode ser visualizado pelo usuário. 
//O programa só é encerrado quando o usuário escolhe uma opção de sair no menu.
