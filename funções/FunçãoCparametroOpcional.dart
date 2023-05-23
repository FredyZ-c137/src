void main() {
  //Declarações
  int valor1 = 10;
  int valor2 = 20;

  //Segundo valor será opcional []
  //Se eu deletar o segundo parâmetro
  //da função abaixo, valor 0 será atribuído
  //em seu lugar.
  int resultadoSoma = somaValores(valor1, valor2);

  //Saída 
  print('O Resultado dos valores somados: $resultadoSoma');
}

//1 parâmetro obrigatório e 1 parâmetro opcional
int somaValores(int valor1, [int valor2 = 0]) {
  //Senão informar o valor 2
  //o parâmetro assume 0
  print('Valor 1: $valor1');
  print('Valor 2: $valor2');

  return valor1 + valor2;
}