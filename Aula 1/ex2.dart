class House {
  dynamic id;
  dynamic nome;
  dynamic preco;

  House(this.id, this.nome, this.preco);

  void exibir() {
    print("${this.id} nome: ${this.nome}\n preco: ${this.preco}");
  }
}

void main() {
  House casa1 = new House(1, "Casa do Amor", 400000);
  House casa2 = new House(2, "Casa da Loucura", 1600000);
  House casa3 = new House(3, "Casa da Colina", 800000);
  casa1.exibir();
  casa2.exibir();
  casa3.exibir();
}
