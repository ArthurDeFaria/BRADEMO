import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  ThemeData get theme => ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Colors.black,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Layout',
      theme: theme,
      home: ResponsiveHome(),
    );
  }
}

class ResponsiveHome extends StatelessWidget {
  final List<String> languages = ['Dart', 'JavaScript', 'PHP', 'C++'];

  ResponsiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Responsive Layouts')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWide = constraints.maxWidth > 600;

          Widget leftContent = Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Cheetah Coding',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: Text('BUTTON 1')),
              const SizedBox(height: 10),
              ElevatedButton(onPressed: () {}, child: Text('BUTTON 2')),
            ],
          );

          Widget rightContent = ListView(
            shrinkWrap: true,
            children: languages
                .map((lang) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.grey[900],
                        child: ListTile(
                          title: Center(child: Text(lang)),
                          tileColor: Colors.grey[850],
                        ),
                      ),
                    ))
                .toList(),
          );

          if (isWide) {
            return Row(
              children: [
                Expanded(child: Center(child: leftContent)),
                VerticalDivider(width: 1, color: Colors.white),
                Expanded(child: rightContent),
              ],
            );
          } else {
            return ListView(
              padding: const EdgeInsets.all(16),
              children: [
                Center(child: leftContent),
                const SizedBox(height: 20),
                ...languages.map((lang) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        color: Colors.grey[900],
                        child: ListTile(
                          title: Center(child: Text(lang)),
                          tileColor: Colors.grey[850],
                        ),
                      ),
                    )),
              ],
            );
          }
        },
      ),
    );
  }
}