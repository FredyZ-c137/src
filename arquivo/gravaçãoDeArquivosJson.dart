import 'dart:io';
import 'dart:convert';

void main() {
  final arquivo = File('../arquivo/teste_json.txt'); 

  for(var i = 1; i <= 3; i++){
    final mapa = obterInformacoesDoUsuario(i);

    try {
      /*
      */ 

      final mapaCodificado = json.encode(mapa);
      //FileMode.append para gravar
      arquivo.writeAsStringSync('\n' + mapaCodificado + '\n', mode: FileMode.append);
      print('Mapa $i gravado com sucesso!');
    } catch (e) {
      print('Ocorreu um erro ao gravar o mapa $i: $e');
    }
  }

  lerMapasDoArquivo(arquivo);
}

Map<String, dynamic> obterInformacoesDoUsuario(int numeroMapa) {
  print('=== Preencheado o Mapa $numeroMapa ===');
  stdout.write('Digite o nome: ');
  final nome = stdin.readLineSync()!;

  stdout.write('Digite a idade: ');
  final idade = int.parse(stdin.readLineSync()!);

  stdout.write('Digite a cidade: ');
  final cidade = stdin.readLineSync()!;

  return {'nome': nome, 'idade': idade, 'cidade': cidade};
}

void lerMapasDoArquivo(File arquivo) {
  final linhas = arquivo.readAsLinesSync();

  for (var i = 0; i < linhas.length; i++) {
    final mapaDecodificado = json.decode(linhas[i]);
    print('\n=== Mapa ${i + 1} ===');
    printMap(mapaDecodificado);
  }
}

void printMap(Map<String, dynamic> mapa){
  mapa.forEach((key, value) {
    print('$key: $value');
  });
}