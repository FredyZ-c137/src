import 'dart:io';
import 'dart:convert';
void main() {
  //Declaração de mapa vazio
  Map<String, String> mapanomes = {};
  //laço for que pergunta para o usuario os nome pra adicionar a lista
  for (var i = 1; i < 11; i++){ 
      //print
      stdout.write('Digite o $iº nome (ou Sair pra finalisar o programa): ');
      //enntrada de dados
      String nome = stdin.readLineSync()!;
      //condicional que confere se o usuario digito 'sair'
      if(nome == 'sair'){
        print('Nomes digitados: ');
        //varredura com for each
        mapanomes.forEach((chave, value) { 
        //saida de dados
        print('$chave: $value');  
        });
        return;
      }else;
      //parte responsavel por cria um chave pro valor digitado pelo usuario
      String? chave = 'Nome $i';
      mapanomes[chave] = nome;
    }
}