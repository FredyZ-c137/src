void main() {
  Map<String, int> meuMap = {'a': 1 , 'b': 2, 'c': 3};

  print('-'*70);
  print('Varredura Com ForEach');
  print('-'*70);
  meuMap.forEach((key, value) { 
    print('$key: $value');
  });
  print('-'*70);
}