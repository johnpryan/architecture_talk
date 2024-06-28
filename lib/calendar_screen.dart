import 'package:flutter/material.dart';

import 'event_view.dart';

final double _defaultHeight = 50;

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda'),
      ),
      body: SingleChildScrollView(
        child: _CalendarView(),
      ),
    );
  }
}

class _CalendarView extends StatelessWidget {
  const _CalendarView({super.key});

  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            for (var i = 0; i < 24; i++) ...[
              SizedBox(
                height: _defaultHeight,
              ),
              Divider(
                color: Colors.grey.shade400,
                height: 0,
              ),
            ],
          ],
        ),
        Positioned(
          top: _defaultHeight * 2,
          left: 16,
          right: 0,
          child: SizedBox(
            height: _defaultHeight,
            child: EventView(
              title: 'Mittagessen mit Michael',
              startTime: DateTime.now(),
              endTime: DateTime.now().add(Duration(hours: 1)),
              color: Colors.blue,
            ),
          ),
        ),
      ],
    );
  }
}
