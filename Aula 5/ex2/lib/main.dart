import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App com Tema Azul',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue, // Cor de fundo azul
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Inicial'),
        backgroundColor: Colors.blue[900],
      ),
      body: Center(
        child: Text(
          'Olá!',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}