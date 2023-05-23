import 'dart:io';

//declaração parametros
void enviarEmail(destinatario, assunto, msg) {
  print('='*70);
  print('Enviando email para: $destinatario');
  print('Assunto: $assunto');
  print('Corpo: $msg');
  print('-'*70);
  print('Email enviado com sucesso!');
  print('-'*70);
  print('');
}

void main() {
 //Boa prática
 String? destinatario;
 String? assunto;
 String? msg;

 print('\nExemplo de Função Void');
 print('-'*70);

 stdout.write('Digite o destinatário:');
 destinatario = stdin.readLineSync();

 stdout.write('Digite o assunto: ');
 assunto = stdin.readLineSync();

 stdout.write('Digite o corpo da mensagem: ');
 msg = stdin.readLineSync();

 // invocando a função para ser executada
 //na invocação se chamam argumentos
 enviarEmail(destinatario, assunto, msg); 
}