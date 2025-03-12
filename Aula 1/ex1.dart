class Laptop {
  dynamic id;
  dynamic nome;
  dynamic ram;

  Laptop(this.id, this.nome, this.ram);

  void exibir() {
    print("${this.id} nome: ${this.nome}\n ram: ${this.ram}");
  }
}

void main() {
  Laptop meuprimeiro = new Laptop(1, "Lenovo", 4);
  Laptop meusegundo = new Laptop(2, "Acer", 16);
  Laptop meuterceiro = new Laptop(3, "Samsung", 8);
  meuprimeiro.exibir();
  meusegundo.exibir();
  meuterceiro.exibir();
}
