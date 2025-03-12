class Camera {
  int _id;
  String _marca;
  String _cor;
  double _preco;

  Camera(this._id, this._marca, this._cor, this._preco);

  int get id => _id;
  String get marca => _marca;
  String get cor => _cor;
  double get preco => _preco;

  set id(int novoId) => _id = novoId;
  set marca(String novaMarca) => _marca = novaMarca;
  set cor(String novaCor) => _cor = novaCor;
  set preco(double novoPreco) => _preco = novoPreco;

  String exibir() {
    return "ID: $_id\nMarca: $_marca\nCor: $_cor\nPreço: R\$$_preco";
  }
}

void main() {
  Camera camera1 = Camera(1, "Canon", "Preta", 2500.00);
  Camera camera2 = Camera(2, "Nikon", "Prata", 3200.50);
  Camera camera3 = Camera(3, "Sony", "Branca", 2800.75);

  print(camera1.exibir());
  print("\n");
  print(camera2.exibir());
  print("\n");
  print(camera3.exibir());
}
