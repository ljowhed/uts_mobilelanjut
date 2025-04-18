class Zodiac {
  final String name;
  final String description;
  final String monthDescription;
  final DateTime start;
  final DateTime end;

  Zodiac({
    required this.name,
    required this.description,
    required this.monthDescription,
    required this.start,
    required this.end,
  });

  bool isInRange(DateTime date) {
    final adjustedDate = DateTime(2000, date.month, date.day);
    final adjustedStart = DateTime(2000, start.month, start.day);
    final adjustedEnd = DateTime(2000, end.month, end.day);
    if (adjustedStart.isAfter(adjustedEnd)) {
      return (adjustedDate.isAfter(adjustedStart) || adjustedDate.isBefore(adjustedEnd)) ||
          adjustedDate.isAtSameMomentAs(adjustedStart) || adjustedDate.isAtSameMomentAs(adjustedEnd);
    } else {
      return (adjustedDate.isAfter(adjustedStart) && adjustedDate.isBefore(adjustedEnd)) ||
          adjustedDate.isAtSameMomentAs(adjustedStart) || adjustedDate.isAtSameMomentAs(adjustedEnd);
    }
  }
}
