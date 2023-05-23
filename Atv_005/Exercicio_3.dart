import 'dart:io';

void main() {
  //lista de resultados vazia 
  List<dynamic> historico = [];

  //laço while pra segurar o codigo 
  while (true) {  
    
    //chamada da função de exibir o cabeçalho
    exibirMenu();
    //entrada de dados 
    String? opcao = stdin.readLineSync();

    //switch 
    switch (opcao) {
      case '1':
        //chamada da função que calcula os centimetros pra polegadas
        converterCmParaPolegada(historico);
        break;
      case '2':
        //chamada da função que calcula os milimetros para centimetros
        converterMilimetroParaCm(historico);
        break;
      case '3':
        //chamada da função que calcula os kilometros para milhas
        converterKmParaMilha(historico);
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

//funções
//--------------------------
//função de exibir menu 
void exibirMenu() {
  print('Escolha uma das opções abaixo:');
  print('1 - Converter centímetros para polegadas');
  print('2 - Converter milímetros para centímetros');
  print('3 - Converter quilômetros para milhas');
  print('4 - Exibir histórico de conversões');
  print('5 - Sair');
}


//função que converte os centimetros pra polegadas
converterCmParaPolegada(List<dynamic> historico) {
  //print inline
  stdout.write('Digite o valor em centímetros: ');
  //entrada de dados com casting e nullsafety
  double? cm = double.parse(stdin.readLineSync()!);
  //condicional que confere se a variavel não e nula
  if (cm == null) {
    print('Valor inválido, tente novamente.');
    return;
  }
  //calculo da conversão
  double polegada = cm / 2.54;
  //Saída de dados interpolada
  print('$cm cm = ${polegada.toStringAsFixed(2)} polegadas');
  //metodo add que adiciona uma String interpolada a minha lista de resultados
  historico.add('$cm cm = ${polegada.toStringAsFixed(2)} polegadas');
}

//função que converte os milimetros pra centimetros
converterMilimetroParaCm(List<dynamic> historico) {
  //print inline
  stdout.write('Digite o valor em milímetros: ');
  //entrada de dados com casting e nullsafety
  double? mm = double.parse(stdin.readLineSync()!);
  //condicional que confere se a variavel não e nula
  if (mm == null) {
    print('Valor inválido, tente novamente.');
    return;
  }
  //calculo da conversão
  double cm = mm / 10;
  //Saída de dados interpolada
  print('$mm mm = ${cm.toStringAsFixed(2)} cm');
  //metodo add que adiciona uma String interpolada a minha lista de resultados
  historico.add('$mm mm = $cm cm');
}

//função que converte os kilometros em milhas
converterKmParaMilha(List<dynamic> historico) {
  //print inline
  stdout.write('Digite o valor em quilômetros: ');
  //entrada de dados com casting e nullsafety
  double? km = double.parse(stdin.readLineSync()!);
  //condicional que confere se a variavel não e nula
  if (km == null) {
    print('Valor inválido, tente novamente.');
    return;
  }
  //calculo da conversão
  double milha = km / 1.609;
  //Saída de dados interpolada
  print('$km km = ${milha.toStringAsFixed(2)} milhas');
  //metodo add que adiciona uma String interpolada a minha lista de resultados
  historico.add('$km km = $milha milhas');
}

//função anonima que exibi os items da lista usando uma varredura com foreach
exibirHistorico(List<dynamic> historico) {
  if (historico.isEmpty) {
    print('Histórico vazio.');
  } else {
    historico.forEach((item) => print(item));
  }
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


//conversor de medidas

//Este programa exibe um cabeçalho com três opções de conversão de medidas diferentes: 
//centímetros para polegadas, milímetros para centímetros e quilômetros para milhas. 
//Em seguida, os resultados das conversões são armazenados em uma lista de histórico de conversões. 
//Por fim, quando sair do programa uma função anônima é utilizada para percorrer a lista e exibir 
//os resultados para o usuário.

