import 'dart:io';

void main() {
  //Caminho do arquivo
  String caminhoArquivo = '../arquivo/Documentos';

  //Abrir o arquivo
  File arquivo = File(caminhoArquivo);

  arquivo.readAsLines().then((linhas) {
    //Imprimir a lista de frutas
    print('Lista de Frutas:');
    for (String linha in linhas) {
      print(linha);
    }
  }).catchError((e) {
    print('Erro ao ler o arquivo: $e');
  });
}