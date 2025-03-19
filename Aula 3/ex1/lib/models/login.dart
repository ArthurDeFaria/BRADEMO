class Login {
  late String _email;
  late String _senha;

  Login(String email, String senha)
      : _email = email, _senha = senha;

  String get email => _email;
  String get senha => _senha;

  bool isValid() {
    return _email == "admin" && _senha == "1234";
  }
}