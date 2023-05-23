void main() {
  Map<String, int> meuMap = {'a':1, 'b':2, 'c':3};

  //Usando entries
  print('-'*70);
  print('VARREDURA COM FOR IN');
  print('-'*70);
  for(dynamic entrada in meuMap.entries){
    String chave = entrada.key;
    int valor = entrada.value;
    print('$chave: $valor');
  }
  print('-'*70);

  //Usando keys
  Map<String, dynamic> meuMap2 = {'Nome': 'John Doe', 'nascimento': 1970};

  for (String chave in meuMap2.keys){
    dynamic valor = meuMap2[chave];
    print('$chave: $valor');
  }
  print('-'*70);

  //Usando values
  Map<String, dynamic> meuMap3 = {'Nome': 'John Doe', 'nascimento': 1970};

  for (var value in meuMap3.values) {
    print(value);
  }
  print('-'*70);
}