import 'package:flutter/material.dart';

class Example1Screen extends StatelessWidget {
  const Example1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exemplo 1')),
      body: Center(
        child: Container(
          width: 150,
          height: 100,
          color: Colors.blue,
          child: Center(child: Text('Container')),
        ),
      ),
    );
  }
}