import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

final _timeFormat = DateFormat('h:mm a');

class EventView extends StatelessWidget {
  final String title;
  final DateTime startTime;
  final DateTime endTime;
  final Color color;

  const EventView({
    super.key,
    required this.title,
    required this.startTime,
    required this.endTime,
    required this.color,
  });

  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(width: 2, color: Colors.blue),
      ),
      child: Padding(
        padding: EdgeInsets.only(left: 8.0, right: 8.0),
        child: Wrap(
          direction: Axis.horizontal,
          spacing: 8,
          children: [
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            Text(
              '${_timeFormat.format(startTime)} - ${_timeFormat.format(endTime)}',
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
