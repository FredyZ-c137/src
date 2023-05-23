void main(List<String> args) {
  print('-'*70);
  print('EXEMPLO DE WHERE EM MAPA');
  print('='*70); 
  Map<String, int> pessoas = {
    'Alice': 20,
    'Bob': 17,
    'Carol': 25,
    'Dave': 16,
    'Eve': 30
  };

  Map<String, int> pessoasMaiores =
    Map.fromEntries(pessoas.entries.where((e) => e.value > 20));

//Saída
  print(pessoasMaiores); //{Alice: 20, Carol: 25, Eve: 30}
  print('-'*70);    
}