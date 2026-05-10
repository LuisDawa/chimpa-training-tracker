import 'package:isar/isar.dart';
import 'activity.dart';

part 'daily_record.g.dart';

@collection
class DailyRecord {
  // Unique DailyRecord ID
  Id id = Isar.autoIncrement;

  late DateTime date;

  // List of Activities done that day
  final activities = IsarLinks<Activity>();
}