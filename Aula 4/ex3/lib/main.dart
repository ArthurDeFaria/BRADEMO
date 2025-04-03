import 'package:ex3/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'BRADEMO - Ex3',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Home()
      );
  }
}