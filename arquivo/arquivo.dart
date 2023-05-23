import 'dart:io';
import 'dart:convert';

void main() {
  while (true) {
    final caminho = File('../arquivo/teste_json.txt');
    final listaMapas = lerMapasDoArquivo(caminho);

    exibirMenu();
    final opcao = stdin.readLineSync()!.toLowerCase();

    switch (opcao) {
      case '1':
        print('\nConteúdo do arquivo:');
        listaMapas.forEach((mapa) => print(json.encode(mapa)));
        break;
      case '2':
        stdout.write('\nDigite o número do mapa que deseja excluir: ');
        final linhaParaExcluir = int.parse(stdin.readLineSync()!);

        final listaAtualizada = excluirLinha(listaMapas, linhaParaExcluir);

        if (listaAtualizada != null) {
          final novoConteudo =
              listaAtualizada.map((mapa) => json.encode(mapa)).join('\n');
          caminho.writeAsStringSync(novoConteudo);
          print('Linha $linhaParaExcluir excluída com sucesso!');
        } else {
          print('Falha ao excluir a linha $linhaParaExcluir.');
        }
        break;
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

      case '4':
        alteracoes(listaMapas);
        print('Novo mapa adicionado com sucesso!');
      break;  
      case 'sair':
        print('Encerrando o programa...');
        return;
      default:
        print('Opção inválida. Tente novamente.');
        break;
    }
  }
}

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

  return listaMapas.cast<Map<String, dynamic>>();
}

List<dynamic>? excluirLinha(List<dynamic> lista, int linhaParaExcluir) {
  if (linhaParaExcluir > 0 && linhaParaExcluir <= lista.length) {
    lista.removeAt(linhaParaExcluir - 1);
    return lista;
  }
  return null;
}

Map<String, dynamic> obterInformacoesDoUsuario(int numeroMapa) {
  print('=== Preenchendo o Mapa $numeroMapa ===');
  stdout.write('Digite o nome: ');
  final nome = stdin.readLineSync()!;

  stdout.write('Digite a idade: ');
  final idade = int.parse(stdin.readLineSync()!);

  stdout.write('Digite a cidade: ');
  final cidade = stdin.readLineSync()!;

  return {'nome': nome, 'idade': idade, 'cidade': cidade};
}

void alteracoes(List<Map<String, dynamic>> arquivos) {
  print('Digite o nome que deseja modificar: ');
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
    print(arquivos);

    // Grava as alterações no arquivo
    final caminho = File('../arquivo/teste_json.txt');
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
