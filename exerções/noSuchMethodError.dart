void main() {
  try {
    print('-'*70);
    print('Testando FormatException');
    print('-'*70);

    var list = [1, 2, 3];
    //list.toUpperCase();
  } catch (e) {
    if (e is NoSuchMethodError ){ //Melhor entendido com 00
      print('Erro: O método chamado não existe:');
      print('-'*70);
    } else{
      print('Ocorreu um erro: $e');
      print('-'*70);
    }
  }
}