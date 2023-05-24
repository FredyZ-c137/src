//classe
import 'dart:io';

class Triangulo{
  //Atributos
  double base;
  double altura;

  //Método Construtor
  Triangulo(this.base, this.altura);

  //Método
  double calculoAreaTriangulo(){
    return (base * altura) / 2;
  }
}

class Quadrado{
  int lado;

  //Método Construtor
  Quadrado(this.lado);

  //Método
  int calcularAreaQuadrado(){
    return lado * lado;
  }
}

class Retangulo{
  int base;
  int altura;

  //Método Construtor
  Retangulo(this.base, this.altura);

  //Método
  int calcularAreaRetangulo(){
    return base * altura;
  }
}

class Circulo{
  double raio;
  
  //Método Construtor
  Circulo(this.raio);

  //Método
  double calcularAreaCirculo(){
    double area = 3.14 * (raio * raio);
    return area; 
  }
}
void main() {
  while(true){
    exibirMenu();
    int opcao = int.parse(stdin.readLineSync()!);
    switch(opcao){
      case 1:
        print('Digite a base do triangulo: ');
        double base = double.parse(stdin.readLineSync()!);

        print('Digite a altura do triangulo: ');
        double altura = double.parse(stdin.readLineSync()!);

        //Instaciando 
        Triangulo traingulo = Triangulo(base, altura);
        double area = traingulo.calculoAreaTriangulo(); 
        print('A area do triangulo é $area');
      break;

      case 2:
        print('Digite a medida de um dos lados do quadrado: ');
        int lado = int.parse(stdin.readLineSync()!);

        //Instanciando
        Quadrado quadrado = Quadrado(lado);
        int area = quadrado.calcularAreaQuadrado();
        print('A area do quadrado é $area');
      break;

      case 3:
        print('Digite a base do retangulo: ');
        int base = int.parse(stdin.readLineSync()!);

        print('Digite a altura do retangulo: ');
        int altura = int.parse(stdin.readLineSync()!);

        //Instaciando 
        Retangulo retangulo = Retangulo(base, altura);
        int area = retangulo.calcularAreaRetangulo(); 
        print('A area do retangulo é $area');
      break;
      
      case 4:
        print('Digite o raio do circulo: ');
        double raio = double.parse(stdin.readLineSync()!);

        //Instaciando
        Circulo circulo = Circulo(raio);
        double area = circulo.calcularAreaCirculo();
        print('A area do circulo é $area');
      break;

      case 5:

        return;
    }

  }
}

void exibirMenu(){
    print('1 - Area do Triangulo');
    print('2 - Area do quadrado');
    print('3 - Area do retangulo');
    print('4 - Area do circulo');
    print('Ou " 5 " para encerrar o programa!');
  }