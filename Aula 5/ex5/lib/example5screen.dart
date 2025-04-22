import 'package:flutter/material.dart';

class Example5Screen extends StatelessWidget {
  const Example5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exemplo 5')),
      body: Center(
        child: SizedBox(
          width: 150,
          height: 150,
          child: Container(
            color: Colors.orange,
            child: Center(child: Text('SizedBox')),
          ),
        ),
      ),
    );
  }
}