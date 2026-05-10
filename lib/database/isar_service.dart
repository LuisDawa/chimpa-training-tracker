import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import '../models/activity.dart';
import '../models/daily_record.dart';
import '../models/measures.dart';

class IsarService {
  late Future<Isar> db;

  IsarService() {
    db = openDB();
  }

  Future<Isar> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    
    if (Isar.instanceNames.isEmpty) {
      return await Isar.open(
        [
          MeasuresSchema,
          ActivitySchema,
          DailyRecordSchema,
        ],
        directory: dir.path,
      );
    }

    return Future.value(Isar.getInstance());
  }

  // --- Measures Operations ---
  Future<void> saveMeasures(Measures measures) async {
    final isar = await db;
    isar.writeTxnSync(() => isar.measures.putSync(measures));
  }

  Future<List<Measures>> getAllMeasures() async {
    final isar = await db;
    return await isar.measures.where().sortByDateDesc().findAll();
  }

  Future<void> deleteMeasures(int id) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.measures.delete(id);
    });
  }

  // --- Activity Operations ---
  Future<void> saveActivity(Activity activity) async {
    final isar = await db;
    isar.writeTxnSync(() => isar.activities.putSync(activity));
  }

  Future<List<Activity>> getAllActivities() async {
    final isar = await db;
    return await isar.activities.where().findAll();
  }

  Future<void> deleteActivity(int id) async {
    final isar = await db;
    await isar.writeTxn(() async {
      await isar.activities.delete(id);
    });
  }

  // --- Daily Record Operations ---
  Future<void> saveDailyRecord(DailyRecord record) async {
    final isar = await db;
    isar.writeTxnSync(() {
      isar.dailyRecords.putSync(record);
      record.activities.saveSync();
    });
  }

  Future<List<DailyRecord>> getAllDailyRecords() async {
    final isar = await db;
    return await isar.dailyRecords.where().sortByDateDesc().findAll();
  }
}