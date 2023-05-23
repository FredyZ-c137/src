void main(List<String> args) {
  print('-'*70);
  print('EXEMPLO DE WHERE, MAP() E REDUCE() NA FILTRAGEM');
  print('='*70); 

  Map<String, int> numeros = {
    'um': 32,
    'dois': 12,
    'tres': 332,
    'quatro': 24,
    'cinco': 115
  };

  dynamic soma = numeros.values
      .where((num) => num % 2 == 0) //Filtra 
      .map((num) => num * 2) // transforma
      .reduce((soma, num) => soma + num); // reduz(calcula)

  print(soma); // Imprime o resultado (800)
  print('='*70);
}