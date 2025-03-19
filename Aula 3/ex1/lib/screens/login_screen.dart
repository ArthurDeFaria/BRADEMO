import 'package:ex1/widgets/login_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login Page", style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),
        body: LoginForm()
      );
  }

}