import 'dart:io';

// Programa principal
void main() {
  //declaração de uma lista de preços 
  List<double> precos = [
    20.0, 10.0, 35.0, 10.0, 4.0, 8.0, 4.0, 3.5, 3.0, 5.0
  ];
  //declaração de uma lista de produtos
  List<String> produtos = [
    'Arroz', 'Feijão', 'Carne bovina',
    'Frango', 'Leite', 'Ovos', 'Macarrão',
    'Farinha de trigo', 'Óleo de soja'
  ];
  //declaração de lista vazia
  List<String> ListadeCompras = [

  ];
  //laço while pra segurar o programa
  while(true) {
    //chamada da função que exibi a tabela
    exibirTabela();
    //chamada da função soma os valores dos produtos e adiciona os produtos escolhidos na lista vazia
    double total = soma(precos, produtos, ListadeCompras);  
    //Saída de dados interpolada
    print('A soma dos valores é: RS ${total.toStringAsFixed(2)}');
    //chamada da função de varredura da lista de resuldados
    //varreduraComMensagem(List<String> ListadeCompras, mensagem: 'Lista de produtos: ');
    //print que exibi pro usuario a escolha de continuar rodando o programa ou de sair dele
    print('Presione Enter para continuar ou sair pra sair do programa!');
          //entrada de dados
          String opcao = stdin.readLineSync()!;
            //condicional que confere se o usuario digitou 'sair'
            if(opcao == 'sair') {
              print('FIM DO PROGRAMA!');
              //return pra interrope o programa
              return;
            } else {
            }
  }
}

// Funções
void exibirTabela() {
  print('-' * 70);
  print('Tabela de preços');
  print('=' * 70);
  print('''
1. Arroz - RS 20,00 por saco de 5kg
2. Feijão - RS 10,00 por saco de 1kg
3. Carne bovina - RS 35,00 por kg
4. Frango - RS 10,00 por kg
5. Leite - RS 4,00 por litro
6. Ovos - RS 8,00 por dúzia
7. Macarrão - RS 4,00 por pacote de 500g
8. Farinha de trigo - RS 3,00 por kg
9. Óleo de soja - RS 5,00 por litro

Escolha 5 produtos'''
  );
}

//função que soma os valores e adiciona eles em uma lista de compras
double soma(List<double> precos, List<String> produtos, List<String> ListadeCompras) {
  double total = 0.0;
  for(var i = 0; i < 5; i++) {
    //print inline
    stdout.write('Escolha o produto ${i+1}: ');
    //entrada de dados interpolada
    String? entrada = stdin.readLineSync();
    //condicional que confere se o usuario digitou algo ou deixo a entrada em branco
    if(entrada != null) {
      //casting mudando a entrada de string pra int
      int opcao = int.parse(entrada);
      
      double preco = precos[opcao - 1];
      //pegando o produto da lista de produtos
      String item = produtos[opcao -1];
      //adicionando os produtos escolhidos na lista de compras
      ListadeCompras.add(item);
      //soma dos items
      total += preco;
    }
  }
  //retornando a soma dos valores
  return total;
}

//tema

//soma os preços dos produtos do usuario
//depois retorna o preço   

//funcionalidade

//print da tabela de items 
//entrada de dados do usuario escolhendo os items desejados os adicionando os removendo
//soma dos valores


void main1() {
  List<String> numeros = ['1', '2', '3', '4','5'];

  // Chama a função com parâmetro opcional 'mensagem'
  varreduraComMensagem(numeros, mensagem: 'Os números são: ');
}

void varreduraComMensagem(List<String> ListadeCompras, {String ?mensagem}) {
  // Se a mensagem foi informada, imprime-a antes de varrer a lista
  if (mensagem != null) {
    print(mensagem);
  }
  // Define uma função anônima que imprime cada elemento da lista
  //ListadeCompras.forEach((elemento) => print(elemento));
}

//funcionalidade

//Esse código em Dart é um programa de compras que exibe uma tabela de preços de 
//produtos e permite ao usuário escolher 5 produtos da tabela. O programa calcula o valor
//total dos produtos escolhidos, adiciona os produtos selecionados em uma lista de compras 
//e exibe essa lista na tela. O programa possui uma função para exibir a tabela de preços, uma 
//função para somar os valores dos produtos e adicionar os produtos escolhidos na lista de 
//compras e uma função anônima que varre a lista de compras e a exibe na tela. O programa 
//utiliza um laço while para permitir ao usuário continuar adicionando produtos na lista de 
//compras ou sair do programa digitando "sair".