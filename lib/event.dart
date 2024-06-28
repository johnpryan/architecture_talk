class Event {
  String title;
  DateTime start;
  DateTime end;

  Duration get duration => start.difference(end);

  Event(this.title, {
    required this.start,
    required this.end,
  });

  Event copy() =>
      Event(
        title,
        start: start.copyWith(),
        end: end.copyWith(),
      );

  String toString() => '[Event] $title $start - $end';
}
