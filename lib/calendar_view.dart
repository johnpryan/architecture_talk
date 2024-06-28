import 'package:flutter/material.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Agenda'),),
      body: Center(
        child: Text("Hello, World!"),
      ),
    );
  }
}