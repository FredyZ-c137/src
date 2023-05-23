void main() {
  print('-'*70);
  print('Testando NoSuchMethodError');
  print('-'*70);

  try {
    //variavel booleana
    dynamic variavel = true;
    //tentando iterar
    variavel++;
  } catch (e) {
    print('Erro!!! $e');
    print('-'*70);
  }
}