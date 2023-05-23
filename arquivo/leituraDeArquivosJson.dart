import 'dart:io';
import 'dart:convert';

void main() {
  final caminho = File('../arquivo/teste_json.txt');
  lerMapasDoArquivo(caminho);
}

void lerMapasDoArquivo(File file) {
  final conteudo = file.readAsLinesSync();
  int i = 0;
  while(i < conteudo.length) {
    final linha = conteudo[i].trim();

    if (linha.isNotEmpty) {
      try {
        final mapaDecodificado = json.decode(linha);
        print('\n=== Mapa ${i + 1} ===');
        printMap(mapaDecodificado);
      } catch (e) {
        print('Ocorreu um erro ao decodificar o mapa ${i + 1}: $e');
      }
    }
  i++;  
  }
}

void printMap(Map<String, dynamic> map) {
  map.forEach((key, value) {
    print('$key: $value');
  });
}