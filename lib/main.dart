import 'package:flutter/material.dart';

void main() {
  runApp(AgendaApp());
}

class AgendaApp extends StatelessWidget {
  AgendaApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Agenda'),),
      body: Center(
        child: Text("Hello, World!"),
      ),
    );
  }
}
