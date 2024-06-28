import 'package:flutter/material.dart';

import 'event_view.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda'),
      ),
      body: Center(
        child: EventView(
          title: 'Mittagessen mit Michael',
          startTime: DateTime.now(),
          endTime: DateTime.now().add(Duration(hours: 1)),
          color: Colors.blue,
        ),
      ),
    );
  }
}
