void main() {
  var meuMap = {'a': 1, 'b': 2, 'c': 3};

  print('-'*70);
  print('Filtragem COM O MÉTODO MAP()');
  print('-'*70);
  // Não coonfundir o método map() com o tipo Map<>
  var resultado = 
    meuMap.entries.map((e) => '${e.key}: ${e.value}');

  print(resultado.join(', ')); //Saída a: 1, b: 2, c: 3
  print('-'*70);

  //TRANSFORMAÇÃO UTILIZANDO UMA LISTA
  List<int> numeros = [1, 2, 3, 4, 5];
  var doubleNumbers = numeros.map((number) => number * 2);

  print(doubleNumbers); // Saída: (2, 4, 6, 8, 10)
  print('-'*70);  
}