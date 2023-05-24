import 'dart:io';

//classe IMC
class IMC{
  //Atributos 
  double altura;
  double peso;

  //Método Construtor
  IMC(this.altura, this.peso); 
  
  //Método de calculo de IMC
  double calculoIMC(){
    return peso / (altura * altura);
  } 
}

//Programa principal
void main() {
  //print
  print('Digite a sua altura: ');
  //entra de dados com casting
  double altura = double.parse(stdin.readLineSync()!);

  //print
  print('Digite seu peso: ');
  //entra de dados com casting
  double peso = double.parse(stdin.readLineSync()!);

  //Instaciando o objeto
  IMC imc = IMC(altura, peso);
  double indiceDeMassaCorporia = imc.calculoIMC();
  print('Seu IMC é ${indiceDeMassaCorporia.toStringAsFixed(2)}');
  //Condicional que confere qual o IMC da pessoa
  if(indiceDeMassaCorporia < 18.5){
    print('Seu IMC esta baixo');
  }else if(indiceDeMassaCorporia>18.5 && indiceDeMassaCorporia<24.9){
    print('Seu IMC é normal');
  }else if(indiceDeMassaCorporia>25 && indiceDeMassaCorporia<29.9){
    print('Seu IMC esta com sobrepeso');
  }else if(indiceDeMassaCorporia>30 && indiceDeMassaCorporia<39.9){
    print('Seu IMC esta com obesidade grau 1');
  }else if(indiceDeMassaCorporia>40){
    print('Seu IMC esta com obesidade grave');
 }
}