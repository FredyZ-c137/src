import 'dart:io';
import 'dart:convert';
 
void main() {
  final caminho = File('../arquivo/teste_json.txt');

  final listaMapas = lerMapasDoArquivo(caminho);

  stdout.write('\nDigite o número do mapa que deseja modificar: ');
  final linhaParaAlterar = int.parse(stdin.readLineSync()!);

  final mapaExistente = obterMapaPorLinha(listaMapas, linhaParaAlterar);

  if (mapaExistente != null) {
    final mapaAtualizado = obterInformacoesDoUsuario(mapaExistente);
    listaMapas[linhaParaAlterar - 1] = mapaAtualizado;

    final novoConteudo =
        listaMapas.map((mapa) => json.encode(mapa)).join('\n');
    caminho.writeAsStringSync(novoConteudo);
    print('Linha ${linhaParaAlterar} alterada com sucesso!');
  } else {
    print('Falha ao modificar a linha ${linhaParaAlterar}.');
  }
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

Map<String, dynamic>? obterMapaPorLinha(
    List<Map<String, dynamic>> listaMapas, int linha) {
  if (linha > 0 && linha <= listaMapas.length) {
    return listaMapas[linha - 1];
  }
  return null;
}

Map<String, dynamic> obterInformacoesDoUsuario(Map<String, dynamic> mapaExistente) {
  print('=== Modificando o Mapa ===');
  stdout.write('Digite o nome: ');
  final nome = stdin.readLineSync()!;

  stdout.write('Digite a idade: ');
  final idade = int.parse(stdin.readLineSync()!);

  stdout.write('Digite a cidade: ');
  final cidade = stdin.readLineSync()!;

  return {'nome': nome, 'idade': idade, 'cidade': cidade};
}