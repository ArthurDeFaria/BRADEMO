import 'package:flutter/material.dart';

class Example4Screen extends StatelessWidget {
  const Example4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Exemplo 4')),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.grey,
          child: OverflowBox(
            maxWidth: 200,
            maxHeight: 200,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.purple,
              child: Center(child: Text('OverflowBox')),
            ),
          ),
        ),
      ),
    );
  }
}