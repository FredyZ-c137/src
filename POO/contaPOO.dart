class Conta{
  //Definição (atributos) da classe Conta
  late String titular;
  late double saldo;

  //Construtor da classe Conta
  Conta(String titular, double saldoInicial) {
    this.titular = titular;
    this.saldo = saldoInicial;
  }

  //Método para realizar um depósito na conta
  void depositar(double valor) {
    saldo += valor; // Incrementa o valor ao saldo da conta
    print("Deposito de $valor realizado. Novo saldo: $saldo");
    print('-'*70);
  }

  //Método para realizar um saque na conta
  void sacar(double valor) {
    if(saldo >= valor) {
      saldo -= valor; //Decreamenta o valor do saldo da conta
      print('Saque de $valor realizado. Novo saldo: $saldo');
      print('-'*70);
    }else {
      print('Saldo insuficiente. Operação não realizada.');
    }
  }

  //Método para exibir o saldo da conta
  void exibirSaldo() {
    print("Saldo atual: $saldo");
    print('-'*70);
  }
}

// Uso da classe Conta

void main(){
  // Criação de uma instância da classe Conta com o construtor
  Conta cliente1 = Conta('John', 1000.0);
  // Chamada do método exibirSaldo() da instância minhaConta
  cliente1.exibirSaldo();
  // Chamada do método depositar() da instância minhaConta
  cliente1.depositar(500.0);
  // Chamada do método sacar() da instância minhaConta
  cliente1.sacar(300.0);
  // Chamada do método exibirSaldo() da instância minhaConta
  cliente1.exibirSaldo();
}
