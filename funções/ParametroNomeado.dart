
import 'dart:io';
void main() {
  String nomeFuncionario;
  String cargoFuncionario;
  double salarioFuncionario;

  print('-'*70);
  stdout.write('Nome do funcionário: ');
  nomeFuncionario = stdin.readLineSync()!;
  stdout.write('Cargo ocupado: ');
  cargoFuncionario = stdin.readLineSync()!;
  stdout.write('Salário funcionário :');
  salarioFuncionario = double.parse(stdin.readLineSync()!);
  print('='*70);

  exibirCadastro(
    //Com parametro nomeado não importa a ordem
    cargo: cargoFuncionario,
    funcionario: nomeFuncionario,
    salario: salarioFuncionario);
}
//Declarando a função void
dynamic exibirCadastro(
  {
    //É necessário colocar required (nullsafety)
    required String funcionario,
    required String cargo,
    required double salario
  })
  {
    //Saída 
    print('-'*70);
    print('Nome do funcionário: $funcionario');
    print('Cargo: $cargo');
    print('Salário: $salario');
    print('-'*70);
  }