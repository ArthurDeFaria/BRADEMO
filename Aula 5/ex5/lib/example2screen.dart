import 'package:flutter/material.dart';

class Example2Screen extends StatelessWidget {
  const Example2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exemplo 2')),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minWidth: 100,
            minHeight: 100,
            maxWidth: 200,
            maxHeight: 200,
          ),
          child: Container(
            width: 300,
            height: 300,
            color: Colors.green,
            child: Center(child: Text('ConstrainedBox')),
          ),
        ),
      ),
    );
  }
}