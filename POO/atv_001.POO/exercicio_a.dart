//Classe olamundo 
class olaMundo{
  //Atributos
  String? mundo;

  //Método
  olaMundo(String mundo) {
    this.mundo = mundo;
  }

  void olamundo(){
    print('$mundo');
  }
}

void main() {
  olaMundo exibir = olaMundo('Ola mundo');
  exibir.olamundo();
}