import 'package:flutter/material.dart';

import 'calendar_screen.dart';

void main() {
  runApp(AgendaApp());
}

class AgendaApp extends StatelessWidget {
  AgendaApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalendarScreen(),
    );
  }
}
