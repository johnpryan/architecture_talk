import 'package:flutter/foundation.dart';

import 'event.dart';
import 'event_data.dart';

class CalendarViewModel extends ChangeNotifier {
  final EventData _model;
  var _currentDate = DateTime.now();

  DateTime get currentDate => _currentDate;

  void goToNextDay() {
    _currentDate = _currentDate.add(Duration(days: 1));
    notifyListeners();
  }

  void goToPreviousDay() {
    _currentDate = _currentDate.subtract(Duration(days: 1));
    notifyListeners();
  }

  CalendarViewModel(EventData eventData) : _model = eventData;

  Iterable<Event> get events => _model.eventsForDate(_currentDate);
}
