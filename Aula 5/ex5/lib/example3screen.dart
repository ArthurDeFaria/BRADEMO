import 'package:flutter/material.dart';

class Example3Screen extends StatelessWidget {
  const Example3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exemplo 3')),
      body: Center(
        child: UnconstrainedBox(
          child: Container(
            width: 300,
            height: 100,
            color: Colors.red,
            child: Center(child: Text('UnconstrainedBox')),
          ),
        ),
      ),
    );
  }
}