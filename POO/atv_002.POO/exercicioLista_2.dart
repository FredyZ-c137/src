import 'dart:io';

class Coversor{
  double conversor;
  List<dynamic>? conversoes;

  Coversor({required this.conversor, this.conversoes});

  celciusPraFahrenheit(){
    return (conversor * 9/5) + 32;      
  } 
  fahrenheitPraCelcius(){
    return (conversor - 32) * 5/9;
  }
  cmPraPolegadas(){
    return conversor / 2.54; 
  }
  polegadasPraCm(){
    return conversor * 2.54;
  }
  metrosPraPes(){
    return conversor *  3.281;
  }
  pesPraMetros(){
    return conversor / 3.281;
  }
}
 
void main() {
  List<Coversor> resultados = [];
  while(true){
    menu(); 
    int opcao = int.parse(stdin.readLineSync()!);
    switch(opcao) {
      case 1:
        print('Digite o valor em celcius: ');
          double conversor = double.parse(stdin.readLineSync()!);

          Coversor result = Coversor(conversor: conversor, );
          double fahrenheit = result.celciusPraFahrenheit();

          List<dynamic> lista = [fahrenheit];

          Coversor conversoes =
              Coversor(conversor: conversor, conversoes: lista);
          resultados.add(conversoes);

          print('O resultado é ${fahrenheit.toStringAsFixed(2)}');
      break;

      case 2:
          print('Digite o valor em fahrenheit: ');
          double conversor = double.parse(stdin.readLineSync()!);

          Coversor result = Coversor(conversor: conversor, );
          double celcius = result.fahrenheitPraCelcius();

          List<dynamic> lista = [celcius];

          Coversor conversoes =
              Coversor(conversor: conversor, conversoes: lista);
          resultados.add(conversoes);

          print('O resultado é ${celcius.toStringAsFixed(2)}');
      break;

      case 3:
          print('Digite o valor em centimetros: ');
          double conversor = double.parse(stdin.readLineSync()!);

          Coversor result = Coversor(conversor: conversor, );
          double cm = result.cmPraPolegadas();

          List<dynamic> lista = [cm];

          Coversor conversoes =
              Coversor(conversor: conversor, conversoes: lista);
          resultados.add(conversoes);

          print('O resultado é ${cm.toStringAsFixed(2)}');
      break;

      case 4:
          print('Digite o valor em polegadas: ');
          double conversor = double.parse(stdin.readLineSync()!);

          Coversor result = Coversor(conversor: conversor, );
          double polegadas = result.polegadasPraCm();

          List<dynamic> lista = [polegadas];

          Coversor conversoes =
              Coversor(conversor: conversor, conversoes: lista);
          resultados.add(conversoes);

          print('O resultado é ${polegadas.toStringAsFixed(2)}');
      break;
      
      case 5:
          print('Digite o valor em metros: ');
          double conversor = double.parse(stdin.readLineSync()!);

          Coversor result = Coversor(conversor: conversor, );
          double metros = result.metrosPraPes();

          List<dynamic> lista = [metros];

          Coversor conversoes =
              Coversor(conversor: conversor, conversoes: lista);
          resultados.add(conversoes);

          print('O resultado é ${metros.toStringAsFixed(2)}');
      break;

      case 6:
          print('Digite o valor em pés: ');
          double conversor = double.parse(stdin.readLineSync()!);

          Coversor result = Coversor(conversor: conversor, );
          double pes = result.pesPraMetros();

          List<dynamic> lista = [pes];

          Coversor conversoes =
              Coversor(conversor: conversor, conversoes: lista);
          resultados.add(conversoes);

          print('O resultado é ${pes.toStringAsFixed(2)}');
      break;

      case 7:
        print('Conversoes:');
          for (var calculo in resultados) {
            for (var resultado in calculo.conversoes!) {
              print('${resultado.toStringAsFixed(2)}');
            }
          }
      return;
    } 
  }
}

menu(){
  print('''
1 - converter de celcius pra fahrenheit
2 - converter de fahrenheit pra celcius
3 - converter de centimetros pra polegadas
4 - converter de polegada pra centimetros
5 - converter de metro pra pés
6 - converter de pés pra metros
7 - sair do programa e imprimir conversoes
''');
}