import 'dart:io';

void main() {
  // Caminho do arquivo
  String caminhoArquivo = 'Documentos';

  //Lista de frutas 
  List<String> frutas = ['Maçã', 'Banana', 'Laranja', 'Abacaxi', 'Morango'];

  //Criar o arquivo
  File arquivo = File(caminhoArquivo);

  //Gravar as frutas no arquivo
  /**
   No Dart, o método then() é usado em conjunto com o método writeAsString()
   para tratar o resultado de uma operação assíncrona.
    */  
  arquivo.writeAsString(frutas.join('\n')).then((_) {
    print('Arquivo criado com sucesso!');
  }).catchError((e) {
    print('Erro ao criar o arquivo $e');
  });
}