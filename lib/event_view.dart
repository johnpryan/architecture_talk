import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'event.dart';

final _timeFormat = DateFormat('h:mm a');

class EventView extends StatelessWidget {
  final Event event;
  final Color color;

  const EventView({
    super.key,
    required this.event,
    required this.color,
  });

  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 3),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 1, color: Colors.white),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 8,
          children: [
            Text(
              event.title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Text(
              '${_timeFormat.format(event.start)} - ${_timeFormat.format(event.end)}',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
