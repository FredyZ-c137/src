import 'dart:io';

//Classe Triangulo
class Triangulo{
  //Atributos
  double base;
  double altura;

  //Método Construtor
  Triangulo(this.base, this.altura);

  //Método de calculo de area
  double calculoAreaTriangulo(){
    return (base * altura) / 2;
  }
}
//Classe Quadrado
class Quadrado{
  int lado;

  //Método Construtor
  Quadrado(this.lado);

  //Método de calculo de area
  int calcularAreaQuadrado(){
    return lado * lado;
  }
}

//Classe Retangulo
class Retangulo{
  int base;
  int altura;

  //Método Construtor
  Retangulo(this.base, this.altura);

  //Método calculo de area
  int calcularAreaRetangulo(){
    return base * altura;
  }
}
//Classe Circulo
class Circulo{
  double raio;
  
  //Método Construtor
  Circulo(this.raio);

  //Método de calculo de area
  double calcularAreaCirculo(){
    double area = 3.14 * (raio * raio);
    return area; 
  }
}

//Programa principal
void main() {
  //laço while pra manter o codigo funcionando
  while(true){
    //chamada da função exibirMenu
    exibirMenu();
    //entra de dados com casting
    int opcao = int.parse(stdin.readLineSync()!);

    switch(opcao){
      case 1:
        //print
        print('Digite a base do triangulo: ');
        //entra de dados com casting
        double base = double.parse(stdin.readLineSync()!);
        
        //print
        print('Digite a altura do triangulo: ');
        //entra de dados com casting
        double altura = double.parse(stdin.readLineSync()!);

        //Instaciando o objeto  
        Triangulo traingulo = Triangulo(base, altura);
        double area = traingulo.calculoAreaTriangulo(); 
        //Saída de dados
        print('A area do triangulo é $area');
      break;

      case 2:
        //print
        print('Digite a medida de um dos lados do quadrado: ');
        //entra de dados com casting
        int lado = int.parse(stdin.readLineSync()!);

        //Instaciando o objeto  
        Quadrado quadrado = Quadrado(lado);
        int area = quadrado.calcularAreaQuadrado();
        //Saída de dados
        print('A area do quadrado é $area');
      break;

      case 3:
        //print
        print('Digite a base do retangulo: ');
        //entra de dados com casting
        int base = int.parse(stdin.readLineSync()!);
        //print
        print('Digite a altura do retangulo: ');
        //entra de dados com casting
        int altura = int.parse(stdin.readLineSync()!);

        //Instaciando o objeto   
        Retangulo retangulo = Retangulo(base, altura);
        int area = retangulo.calcularAreaRetangulo(); 
        //Saída de dados
        print('A area do retangulo é $area');
      break;
      
      case 4:
        //print
        print('Digite o raio do circulo: ');
        //entra de dados com casting
        double raio = double.parse(stdin.readLineSync()!);

        //Instaciando o objeto  
        Circulo circulo = Circulo(raio);
        double area = circulo.calcularAreaCirculo();
        //Saída de dados
        print('A area do circulo é $area');
      break;

      case 5:

        return;
    }

  }
}

//funções 

//função exibirMenu
void exibirMenu(){
    print('1 - Area do Triangulo');
    print('2 - Area do quadrado');
    print('3 - Area do retangulo');
    print('4 - Area do circulo');
    print('Ou " 5 " para encerrar o programa!');
  }