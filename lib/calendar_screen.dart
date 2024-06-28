import 'package:agenda/calendar_view_model.dart';
import 'package:flutter/material.dart';

import 'event.dart';
import 'event_data.dart';
import 'event_view.dart';

final double _defaultHeight = 50;

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agenda'),
      ),
      body: _CalendarView(
        eventData: EventData(),
      ),
    );
  }
}

class _CalendarView extends StatefulWidget {
  final EventData eventData;

  const _CalendarView({required this.eventData});

  @override
  State<_CalendarView> createState() => _CalendarViewState();
}

class _CalendarViewState extends State<_CalendarView> {
  late final CalendarViewModel _viewModel;

  @override
  void initState() {
    _viewModel = CalendarViewModel(widget.eventData);
    super.initState();
  }

  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
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
          for (var event in _viewModel.events) _PositionedEvent(event: event)
        ],
      ),
    );
  }
}

class _PositionedEvent extends StatelessWidget {
  final Event event;

  const _PositionedEvent({
    required this.event,
  });

  double get _top {
    return _defaultHeight * event.start.hour +
        event.start.minute * _defaultHeight / 60;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: _top,
      left: 16,
      right: 0,
      child: SizedBox(
        height: _defaultHeight,
        child: EventView(
          event: event,
          color: Colors.blue,
        ),
      ),
    );
  }
}
