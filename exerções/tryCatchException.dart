import 'dart:io';
void main() {
  try {
    stdout.write('Digite um número: ');
    var num1 = double.parse(stdin.readLineSync()!);

    stdout.write('Digite outro número: ');
    var num2 = double.parse(stdin.readLineSync()!);

    var resultado = dividir(num1, num2);
    print('O resultado da divisão é: $resultado');

    //é comum no lugar de 'exception' colocar 'e'
  } catch (exception) {
    print('Ocorreu um erro: $exception');
  }
}

double dividir(double a, double b) {
  if(b == 0) {
    //Lançamento da exceção
    throw Exception('Divisão por zero não é permitida.');
  }
  return a / b;
}

//------------------------------------------------------------

//try {
  // Código que pode lançar uma exceção
//} catch (exception) {
  // Tratamento da exceção
//}
