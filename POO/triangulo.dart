import 'dart:io';

class Triangulo {
  //Atributos
  double base;
  double altura;

  //Método construtor
  Triangulo(this.base, this.altura);

  //Método para calcular a área
  double calcularArea() {
    return (base*altura) / 2;
  }
}

void main() {
  //Entrada de dados
  print('');
  stdout.write('Digite a medida da base do triângulo: ');
  double base = double.parse(stdin.readLineSync()!);

  stdout.write('Digite a medida da altura do triângulo: ');
  double altura = double.parse(stdin.readLineSync()!);

  //Intanciando o objeto
  Triangulo triangulo = Triangulo(base, altura);
  double area = triangulo.calcularArea();

  //Saída 
  print('A área do triângulo é: $area');
  print('-'*70);
}