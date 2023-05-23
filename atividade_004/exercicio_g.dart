import 'dart:io';
void main() {
  //declaração de map vazio
  Map<String, dynamic> mapitens = {
  };
  //laço while
  while(true){
    //cabeçalho
    print('-'*70);
    print('EXERCICIO G: WHILE, SWITCH, FOR IN, WHERE(), REMOVEWHERE()');
    print('='*70);
    print('''
    Selecione uma opcao:
    1 - Adicionar item
    2 - Exibir todos os itens
    3 - Buscar item por nome
    4 - Atulizar item
    5 - Remover item
    6 - sair
    ''');
    //entrada de dados
    int opcao = int.parse(stdin.readLineSync()!);
      //switch
      switch(opcao){
        case 1: 
          //print
          stdout.write('Digite o nome: ');
          //entrada de dados
          String? nome = stdin.readLineSync()!;
          //print
          stdout.write('Digite a idade: ');
          //entrada de dados
          int idade = int.parse(stdin.readLineSync()!);
          //print
          stdout.write('Digite o endereço: ');
          //entrada de dados
          String? endereco = stdin.readLineSync()!;
          //Adicionando a chave e os elementos no mapa
          mapitens[nome] = {'idade': idade, 'endereço': endereco};
          print('-'*70);
          print('Item adicionado com sucesso!');
          print('='*70);
        break;

        case 2: 
          //confere se o mapa não esta vazio 
          if (mapitens.isEmpty) {
            print('');
            print('Não existe nenhum item na lista!');
            print('');
            }  
          //for in para varrer o mapa e exibir as chaves e os valores
          for (String chave in mapitens.keys) {
            dynamic valor = mapitens[chave]!;
            print('"$chave" $valor');
          }
        break;

        case 3:
          if (mapitens.isEmpty) {
          print('');
          print('Não existe nenhum item na lista!');
          print('');
          break;
        }
        stdout.write('Digite o nome para ser buscado: ');
        String busca = stdin.readLineSync()!;

        var itemBuscado = mapitens.entries.where((e) => e.key == busca);
        if (itemBuscado.isEmpty) {
          print('');
          print('$busca não encontrado!');
          print('');
          break;
        }
          print('='*70);
          print('Resultados da busca');
          print('-'*70);
        for (var item in itemBuscado) {
          print('Nome: ${item.key}');
          print('Idade: ${item.value['idade']}');
          print('Endereço ${item.value['endereço']}');
        }
        break;

        case 4:
            //confere se o mapa não esta vazio
            if (mapitens.isEmpty) {
            print('');
            print('Não existe nenhum item registrado!');
            print('');
            break;
            }
            //print
            stdout.write('Digite o nome que deseja atualizar: ');
            //entrada de dados
            String busca = stdin.readLineSync()!;
            //utiliza o metodo where para achar o nome digitado pelo usuario
            var itemAtualizado = mapitens.entries.where((e) => e.key == busca);
            //confere se o nome existe no mapa
            if (itemAtualizado.isEmpty) {
            print('');
            print('$busca não encontrado!');
            print('');
            break;
            }
            //print
            stdout.write('Digite o novo nome: ');
            //entrada de dados
            String novoNome = stdin.readLineSync()!;
            //print
            stdout.write('Digite a nova idade: ');
            //entrada de dados
            int novaIdade = int.parse(stdin.readLineSync()!);
            //print
            stdout.write('Digite o novo endereço: ');
            //entrada de dados
            String novoEndereco = stdin.readLineSync()!;
            //atualiza os elementos da chave
            mapitens[busca] = {'idade': novaIdade, 'endereço': novoEndereco}; 
            //atualiza a chave e remove a antiga
            mapitens[novoNome] = mapitens.remove(busca); 

            print('');
            print('$busca atualizado com sucesso!');
            print('');

        break;

        case 5:
            //confere se o mapa esta vazio
            if (mapitens.isEmpty) {
            print('');
            print('Não existe nenhum item registrado!');
            print('');
            break;
            }
            //print
            stdout.write('Digite o nome que deseja remover: ');
            //entrada de dados
            String busca = stdin.readLineSync()!;

            //usando o metodo where para achar o nome digitado pelo usuario
            var itemRemovido = mapitens.entries.where((e) => e.key == busca);
            //condicional que confere se o nome existe no mapa
            if (itemRemovido.isEmpty) {
            print('');
            print('$busca não encontrado!');
            print('');
            break;
            }
            //remove a chave do mapa
            mapitens.removeWhere((chave, valor) => chave == busca);

            print('');
            print('$busca removido com sucesso!');
            print('');
            
        break;
        //sai do programa
        case 6:
        return;

        default:
        print('Opção inválida!');
      
      }
    }
  }