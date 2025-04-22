import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GridView',
      home: Scaffold(
        appBar: AppBar(title: Text('Various Plants')),
        body: GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.all(8.0),
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
          children: [
            GridItem(
              imageUrl: 'https://i.imgur.com/tdQxGjF.jpeg',
              title: 'Flower\nAzaleas',
            ),
            GridItem(
              imageUrl: 'https://i.imgur.com/hT5nWV8.jpeg',
              title: 'Succulent\nYucca(Iúca)',
            ),
            GridItem(
              imageUrl: 'https://i.imgur.com/TK5E9FF.png',
              title: 'Flower\nDandy Lion',
            ),
            GridItem(
              imageUrl: 'https://i.imgur.com/3h8sdPK.jpeg',
              title: 'Cactus\nPurple Cactus',
            ),
            GridItem(
              imageUrl: 'https://i.imgur.com/B66t4ZS.jpeg',
              title: 'Flower\nMarigold',
            ),
            GridItem(
              imageUrl: 'https://i.imgur.com/4RNDRN4.jpeg',
              title: 'Cactus\nCactus Flower',
            ),
          ],
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final String imageUrl;
  final String title;

  const GridItem({super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.network(imageUrl, fit: BoxFit.cover),
          Container(
            alignment: Alignment.bottomLeft,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}