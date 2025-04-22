import 'package:ex5/example1screen.dart';
import 'package:ex5/example2screen.dart';
import 'package:ex5/example3screen.dart';
import 'package:ex5/example4screen.dart';
import 'package:ex5/example5screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final ThemeData theme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Colors.black,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    ),
  );

  MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplos de Constraints',
      theme: theme,
      home: HomeScreen(),
      routes: {
        '/example1': (_) => Example1Screen(),
        '/example2': (_) => Example2Screen(),
        '/example3': (_) => Example3Screen(),
        '/example4': (_) => Example4Screen(),
        '/example5': (_) => Example5Screen(),
      },
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> examples = [
    {'title': 'Exemplo 1 - Container Simples', 'route': '/example1'},
    {'title': 'Exemplo 2 - ConstrainedBox', 'route': '/example2'},
    {'title': 'Exemplo 3 - UnconstrainedBox', 'route': '/example3'},
    {'title': 'Exemplo 4 - OverflowBox', 'route': '/example4'},
    {'title': 'Exemplo 5 - SizedBox', 'route': '/example5'},
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exemplos de Constraints')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: examples
            .map((e) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: ElevatedButton(
                    onPressed: () => Navigator.pushNamed(context, e['route']!),
                    child: Text(e['title']!),
                  ),
                ))
            .toList(),
      ),
    );
  }
}
