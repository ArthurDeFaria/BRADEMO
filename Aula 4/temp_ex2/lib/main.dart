import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Speed Dial FAB Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final ValueNotifier<bool> isDialOpen = ValueNotifier(false);

  static const List<Widget> _widgetOptions = <Widget>[
    PlaceholderWidget(Colors.redAccent, 'Início'),
    PlaceholderWidget(Colors.greenAccent, 'Busca'),
    PlaceholderWidget(Colors.blueAccent, 'Notificações'),
    PlaceholderWidget(Colors.orangeAccent, 'Perfil'),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (isDialOpen.value) {
      isDialOpen.value = false;
    }
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 1),
      ),
    );
    isDialOpen.value = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Speed Dial FAB'),
      ),
      body: Center(
        child: IndexedStack(
          index: _selectedIndex,
          children: _widgetOptions,
        ),
      ),
      floatingActionButton: SpeedDial(
        icon: Icons.add,
        activeIcon: Icons.close,
        spacing: 3,
        onOpen: () => debugPrint('SPEED DIAL ABERTO'),
        onClose: () => debugPrint('SPEED DIAL FECHADO'),
        tooltip: 'Abrir Ações',
        heroTag: 'speed-dial-hero-tag',
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        elevation: 8.0,
        shape: const CircleBorder(),
        children: [
          SpeedDialChild(
            child: const Icon(Icons.chat_bubble_outline),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            label: 'Mensagem',
            labelStyle: const TextStyle(fontSize: 14.0),
            onTap: () => _showSnackBar('Ação: Mensagem'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.email_outlined),
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            label: 'Email',
            labelStyle: const TextStyle(fontSize: 14.0),
            onTap: () => _showSnackBar('Ação: Email'),
          ),
          SpeedDialChild(
            child: const Icon(Icons.phone_outlined),
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            label: 'Ligar',
            labelStyle: const TextStyle(fontSize: 14.0),
            onTap: () => _showSnackBar('Ação: Ligar'),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildTabItem(icon: Icons.home, index: 0, label: 'Início'),
                _buildTabItem(icon: Icons.search, index: 1, label: 'Buscar'),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                _buildTabItem(icon: Icons.notifications, index: 2, label: 'Alertas'),
                _buildTabItem(icon: Icons.person, index: 3, label: 'Perfil'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem({
    required IconData icon,
    required int index,
    required String label,
  }) {
    final isSelected = _selectedIndex == index;
    final color = isSelected ? Theme.of(context).primaryColor : Colors.grey;

    return MaterialButton(
      minWidth: 40,
      onPressed: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(icon, color: color),
          Padding(
            padding: const EdgeInsets.only(top: 2.0),
            child: Text(
              label,
              style: TextStyle(
                color: color,
                fontSize: 10,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class PlaceholderWidget extends StatelessWidget {
  final Color color;
  final String text;

  const PlaceholderWidget(this.color, this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}