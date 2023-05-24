import 'dart:math';

class Triangulo {
  //Atributos
  double cateto1;
  double cateto2;

  //Método Construtor: uso das chaves para os parâmetros opcionais
  Triangulo({this.cateto1 = 0, this.cateto2 = 0});

  //Método que calculo o valor da hipotenusa
  double calcularHipotenusa() {
    return sqrt(pow(cateto1, 2) + pow(cateto2, 2));
  }
}

void main() {
  //Instanciando um objeto
  Triangulo triangulo = Triangulo(cateto1: 10, cateto2: 20);
  //Invocando o método para calcular a hipotenusa
  double hipotenusa = triangulo.calcularHipotenusa();

  //Instanciando um objeto sem argumento para testar
  //o parâmetro opcional da linha 10.
  Triangulo triangulo2 = Triangulo();
  double hipotenusa2 = triangulo2.calcularHipotenusa();

  //Saída 
  print('A hipotenusa do 1º triângulo é: ${hipotenusa.toStringAsFixed(2)}');
  print('A hipotenusa do 2º triângulo é: ${hipotenusa2.toStringAsFixed(2)}');
  print('-- A hipotenusa do 2º triângulo é Zero(0) porque');
  print('-- o parâmetro opcional da linha 10 é zero(0)!');
  print('-'*70);
}
