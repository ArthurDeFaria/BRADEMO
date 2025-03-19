import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Page", style: TextStyle(color: Colors.white),),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            SizedBox(
              width: 150,
              child: Image.network('https://storage.googleapis.com/cms-storage-bucket/a9d6ce81aee44ae017ee.png'))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.pop(context);
          }, 
          backgroundColor: Colors.blue,
          shape: CircleBorder(),
          child: Icon(Icons.star, color: Colors.white,),
          ),
      ),
    );
  }

}