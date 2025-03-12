class Animal {
  dynamic id;
  dynamic nome;
  dynamic cor;

  Animal.build(this.id, this.nome, this.cor);

  void exibir() {
    print("${this.id} nome: ${this.nome}\ncor: ${this.cor}");
  }
}

class Cat extends Animal {
  dynamic som;

  Cat(this.som, dynamic id, dynamic nome, dynamic cor)
    : super.build(id, nome, cor);

  @override
  void exibir() {
    super.exibir();
    print("som: ${this.som}");
  }
}

void main() {
  Cat gato = Cat("Miau", 1, "Felix", "Preto");
  gato.exibir();
}
