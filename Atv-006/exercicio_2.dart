import 'dart:io';
import 'dart:convert';

void main() {
  // programa principal

  //=====================================================================

  //laço while para manter o codigo rodando
  while (true) {
    //atribuindo o conteudo do arquivo cadastro_json.txt na variavel caminho
    final caminho = File('../Atv-006/cadastro_json.txt');
    //atribuindo o valor retornado pela função lerMapasDoArquivo na variavel listaMapas
    final listaMapas = lerMapasDoArquivo(caminho);

    //chamada da função exibirMenu
    exibirMenu();
    //entrada de dados
    final opcao = stdin.readLineSync()!.toLowerCase();

    switch (opcao) {
      //case 1 varre o arquivo e imprime os nomes dentro dele
      case '1':
        print('\nConteúdo do arquivo:');
        listaMapas.forEach((mapa) => print(json.encode(mapa)));
        break;
      //case 2 exclui um elemento do mapa pelo seu indice  
      case '2':
        //print
        stdout.write('\nDigite o número do mapa que deseja excluir: ');
        //entrada de dados com casting
        final linhaParaExcluir = int.parse(stdin.readLineSync()!);
        //atribuição dos valores retornados pela função excluirLinha
        final listaAtualizada = excluirLinha(listaMapas, linhaParaExcluir);

        //condicional que confere se a variavel listaAtualizada esta vazia
        if (listaAtualizada != null) {
          final novoConteudo =
              listaAtualizada.map((mapa) => json.encode(mapa)).join('\n');
          caminho.writeAsStringSync(novoConteudo);
          print('Linha $linhaParaExcluir excluída com sucesso!');
        } else {
          print('Falha ao excluir a linha $linhaParaExcluir.');
        }
        break;
      //case 3 que adiciona novos conteudos do arquivo    
      case '3':
        final mapa = obterInformacoesDoUsuario(listaMapas.length + 1);

        try {
          final mapaCodificado = json.encode(mapa);
          caminho.writeAsStringSync('\n$mapaCodificado\n', mode: FileMode.append);
          print('Mapa adicionado com sucesso!');
        } catch (e) {
          print('Ocorreu um erro ao adicionar o mapa: $e');
        }
        break;
      //case 4 que altera conteudos do arquivo
      case '4':
        alteracoes(listaMapas);
        print('Novo mapa adicionado com sucesso!');
      break;  
      //case sair que encerra o programa 
      case 'sair':
        print('Encerrando o programa...');
        return;
      default:
        print('Opção inválida. Tente novamente.');
        break;
    }
  }
}
//funções 

// função que exibi o menu para o usuario
void exibirMenu() {
  stdout.write('''
Escolha o que deseja fazer:

1 - Ler o arquivo
2 - Excluir um elemento do arquivo
3 - Adicionar um elemento no arquivo
4 - Alterar conteudo do arquivo
'Sair' - para encerrar o programa

''');
}

//função lerMapasDoArquivo
List<Map<String, dynamic>> lerMapasDoArquivo(File arquivo) {
  final conteudo = arquivo.readAsLinesSync();
  final listaMapas = [];

  for (var i = 0; i < conteudo.length; i++) {
    final linha = conteudo[i].trim();

    if (linha.isNotEmpty) {
      try {
        final mapaDecodificado = json.decode(linha);
        listaMapas.add(mapaDecodificado);
      } catch (e) {
        print('Ocorreu um erro ao decodificar o mapa ${i + 1}: $e');
      }
    }
  }
  //retorna um mapa dos valores do arquivo
  return listaMapas.cast<Map<String, dynamic>>();
}
//função que exclui o conteudo do arquivo pelo indice
List<dynamic>? excluirLinha(List<dynamic> lista, int linhaParaExcluir) {
  if (linhaParaExcluir > 0 && linhaParaExcluir <= lista.length) {
    lista.removeAt(linhaParaExcluir - 1);
    return lista;
  }
  return null;
}
//função que adiciona conteudo no arquivo
Map<String, dynamic> obterInformacoesDoUsuario(int numeroMapa) {
  print('=== Preenchendo o Mapa $numeroMapa ===');
  stdout.write('Digite o nome: ');
  final nome = stdin.readLineSync()!;

  stdout.write('Digite a idade: ');
  final idade = int.parse(stdin.readLineSync()!);

  stdout.write('Digite a cidade: ');
  final cidade = stdin.readLineSync()!;
  //retornando os valores
  return {'nome': nome, 'idade': idade, 'cidade': cidade};
}
//função que altera os conteudos do arquivo
void alteracoes(List<Map<String, dynamic>> arquivos) {
  //print
  print('Digite o nome que deseja modificar: ');
  //entrada de dados
  String? nome = stdin.readLineSync();
  
  // Procura o mapa na lista com base no nome
  int index = -1;
  for (int i = 0; i < arquivos.length; i++) {
    if (arquivos[i]['nome'] == nome) {
      index = i;
      break;
    }
  }
  
  if (index != -1) {
    print('Digite o novo nome: ');
    String? novoNome = stdin.readLineSync();
    
    // Atualiza o nome do mapa encontrado
    arquivos[index]['nome'] = novoNome;

    print('Digite sim para alterar mais items do usuario ou "sair" para so mudar o nome! ');
    String? opcao = stdin.readLineSync();

      if(opcao == 'sim'){
        print('Digite a nova idade: ');
        int novaIdade = int.parse(stdin.readLineSync()!);
        // Atualiza a idade do mapa encontrado
        arquivos[index]['idade'] = novaIdade;

        print('Digite a nova cidade: ');
        String? novaCidade = stdin.readLineSync();
        // Atualiza a cidade do mapa encontrado
        arquivos[index]['cidade'] = novaCidade;
      }
      
    // Grava as alterações no arquivo
    final caminho = File('../Atv-006/cadastro_json.txt');
    caminho.writeAsStringSync('');
    arquivos.forEach((mapa) {
      final mapaCodificado = json.encode(mapa);
      caminho.writeAsStringSync('$mapaCodificado\n', mode: FileMode.append);
    });

    print('Arquivo atualizado com sucesso!');
  } else {
    print('Mapa não encontrado.');
  }
}
