import 'package:isar/isar.dart';

part 'activity.g.dart';

@Collection(accessor: 'activities') // Force the name to be 'activities' (capital C is necessary here)
class Activity {
  // Unique Activity ID
  Id id = Isar.autoIncrement;

  late String name;
}