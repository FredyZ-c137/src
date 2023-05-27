class Camaro {
  int km;

  Camaro({required this.km});

  acelerarCamaro(){
    while(km < 100){
      km += 10;
      print('Camaro acelerando: $km km/h');
    }
    print('O camaro chegou a 100 km/h');

    while(km != 0){
      km -= 10;
      print('Camaro desacelerando: $km km/h');
    }
  }
}

void main() {
  Camaro carro = Camaro(km: -10);
  carro.acelerarCamaro();
}