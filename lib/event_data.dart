import 'event.dart';

class EventData {
  Iterable<Event> eventsForDate(DateTime date) =>
      _events.where((event) => _isSameDay(date, event.start));

  Iterable<Event> get _events => _createMockData();

  bool _isSameDay(DateTime a, DateTime b) =>
      a.year == b.year && a.month == b.month && a.day == b.day;
}

Iterable<Event> _createMockData() sync* {
  var names = [
    'Flutter für Einsteiger',
    'UI-Design mit Flutter',
    'Architektur'
  ];
  var startTime = DateTime.now().copyWith(hour: 8, minute: 0, microsecond: 0);
  final oneHour = Duration(hours: 1);
  final oneDay = Duration(days: 1);

  for (var name in names) {
    yield Event(
      name,
      start: startTime,
      end: startTime.add(oneHour),
    );
    startTime = startTime.add(oneDay);
  }
}
