// Definição da classe Pessoa
class Pessoa {
  String? nome; // Declaração do atributo "nome" do tipo String
  int? idade; // Declaração do atributo "idade" do tipo int

  // Contrutor da classe Pessoa
  Pessoa(String nome, int idade) {
    // Atribuição do parâmetro "nome" ao atributo "nome" da classe
    this.nome = nome;
    // Atribuição do parâmetro "idade" ao atributo "idade" da classe
    this.idade = idade;
  }

  // Método para exibir os dados da pessoa
  void exibirDados() {
    print('Nome: $nome'); //Impressão do valor do atributo "nome"
    print('Idade: $idade'); // Impressão do valor do atributo "idade"
  }
}

//Uso da classe Pessoa

void main() {
  // Criação de uma instância(objeto) da classe Pessoa com o construtor
  Pessoa pessoa1 = new Pessoa("Jonh Doe", 25);
  // Chamada do método exibirDados() da instância pessoa1
  pessoa1.exibirDados();

  // Criação de uma instância(objeto) da classe Pessoa com o construtor
  Pessoa pessoa2 = new Pessoa("Jane Doe", 30);
  // Chamada do método exibirDados() da instância pessoa1
  pessoa2.exibirDados();
}