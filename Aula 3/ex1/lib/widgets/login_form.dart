import 'package:ex1/models/login.dart';
import 'package:ex1/screens/home_screen.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void _login() {
    String email = emailController.text;
    String password = passwordController.text;

    Login login = Login(email, password);
    if (login.isValid()) {
      emailController.clear();
      passwordController.clear();
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Email ou senha inválidos")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: SizedBox(
                height: 80,
                child: Image.network('https://storage.googleapis.com/cms-storage-bucket/c823e53b3a1a7b0d36a9.png')),
          ),
          SizedBox(
            width: 300,
            child: TextField(
              controller: emailController,
              decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Email"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SizedBox(
              width: 300,
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(border: OutlineInputBorder(), labelText: "Password"),
              ),
            ),
          ),
          TextButton(
            onPressed: () {}, 
            child: Text("Forgot password?", style: TextStyle(color: Colors.blue[700])),
          ),
          SizedBox(
            width: 180,
            child: ElevatedButton(
              onPressed: _login,
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.blue),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
              ),
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          ),
          TextButton(
            onPressed: () {}, 
            child: Text("New user? Create account", style: TextStyle(color: Colors.blue[700])),
          ),
        ],
      ),
    );
  }
}


