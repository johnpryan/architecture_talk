import 'package:flutter/foundation.dart';

import 'event.dart';
import 'event_data.dart';

class CalendarViewModel extends ChangeNotifier {
  final EventData _model;
  final _currentDate = DateTime.now();

  CalendarViewModel(EventData eventData) : _model = eventData;

  Iterable<Event> get events => _model.eventsForDate(_currentDate);
}
