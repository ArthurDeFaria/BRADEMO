import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App com Tema Amarelo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue,
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
        backgroundColor: Colors.orange[800],
      ),
      body: Center(
        child: Text(
          'Tema Amarelo!',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
      ),
      backgroundColor: Colors.yellow,
    );
  }
}
