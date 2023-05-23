void main() {
  print('-'*70);
  print('Testando FormatException');
  print('-'*70);
  try {
    var valor = 'ABC';
    var numero = int.parse(valor);
    print('número convertido: $numero');
  } catch (e) {
    if (e is FormatException) {
      print('Erro de formato: A entrada não é um número valido.');
      print('-'*70);
    } else{
      print('Ocorreu um erro: $e');
    }
  }
}