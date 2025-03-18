import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter is fun!"),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Container(
            color: Colors.red,
            width: 120.0,
            height: 120.0,
            child: Text(
              "Hi, Mom!", 
              style: TextStyle(
                fontSize: 20,
              ),),
          ),
        ),
      ),
    );
  }
}
