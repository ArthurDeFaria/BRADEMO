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
        appBar: AppBar(title: Text("My Home Page"), centerTitle: true,),
        body: Center(
          child: Column(
            children: [
              const Text("Hello, World!", style: TextStyle(fontSize: 20, color: Colors.blue),),
              const SizedBox(height: 70,),
              TextButton(
                onPressed: (){}, 
                style: TextButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                  minimumSize: Size(200, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13)
                  ),
                ),
                child: Text("A Button", style: TextStyle(fontSize: 20, color: Colors.white),),)
            ],
          ),
        ),
      ),
    );
  }
}
