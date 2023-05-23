import 'dart:io';
void main() {
  // Caminho do arquivo
  String caminhoArquivo = 'Documento';

  // Mapa de frutas e quantidades
  Map<String, int> frutas = {
    'Maçã': 5,
    'Banana': 10,
    'Laranja': 8,
    'Abacaxi': 3,
    'Morango': 15,
  };

  // Criar o arquivo
  File arquivo = File(caminhoArquivo);

  // Gravar as frutas no arquivo
  arquivo.writeAsString(mapaParaTexto(frutas)).then((_) {
    print('Arquivo criado com sucesso!');
  }).catchError((e) {
    print('Erro ao criar o arquivo: $e');
  });

  // Imprimir o contéudo do Map
  print('Contéudo do Mapa de Frutas: ');
  frutas.forEach((fruta, quantidade) { 
    print('$fruta: $quantidade');
  });
}

String mapaParaTexto(Map<String, int> map) {
  String texto = '';
  map.forEach((fruta, quantidade) {
    texto += '$fruta: $quantidade\n';
  });
  return texto;
}