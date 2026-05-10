import 'package:flutter/material.dart';
import 'package:isar/isar.dart';
import '../database/isar_service.dart';
import '../models/activity.dart';
import '../models/measures.dart';
import '../models/daily_record.dart';

class TrackerProvider extends ChangeNotifier {
  final IsarService _service = IsarService();

  List<Activity> _activities = [];
  List<Measures> _measures = [];
  List<DailyRecord> _dailyRecords = [];

  // Getters
  List<Activity> get activities => _activities;
  List<Measures> get measures => _measures;
  List<DailyRecord> get dailyRecords => _dailyRecords;

  // Load everything from the database
  Future<void> loadData() async {
    _activities = await _service.getAllActivities();
    _measures = await _service.getAllMeasures();
    _dailyRecords = await _service.getAllDailyRecords(); 
    notifyListeners();
  }

  // Activity Management
  Future<void> addActivity(String name) async {
    final newActivity = Activity()..name = name;
    await _service.saveActivity(newActivity);
    await loadData(); 
  }

  bool activityExists(String name) {
    // Clean up the text so spaces and capitals don't mess up the check
    final searchName = name.trim().toLowerCase();
    
    // Look through our list. If ANY activity matches, return true.
    return _activities.any((activity) {
      return activity.name.trim().toLowerCase() == searchName;
    });
  }
  

  Future<void> deleteActivity(int id) async {
    await _service.deleteActivity(id);
    await loadData(); // Reloads the list so the UI updates instantly!
  }

  // Measures Management
  Future<void> addMeasures(Measures measurement) async {
    await _service.saveMeasures(measurement);
    await loadData();
  }

  Future<void> deleteMeasures(int id) async {
    await _service.deleteMeasures(id);
    await loadData(); // Reloads the list so the card disappears instantly
  }

  // Calendar logic
  Future<void> addActivityToDate(DateTime date, Activity activity) async {
    final isar = await _service.db; // Get database instance
    
    // Normalize date to midnight so all workouts on the same day group together
    final dayOnly = DateTime(date.year, date.month, date.day);

    // 1. Find if a record for this day already exists
    var record = await isar.dailyRecords.filter().dateEqualTo(dayOnly).findFirst();

    // 2. If not, create one
    record ??= DailyRecord()..date = dayOnly;

    // 3. Link the activity to this day
    record.activities.add(activity);

    // 4. Save and refresh
    await _service.saveDailyRecord(record);
    await loadData();
  }

  Future<void> removeActivityFromDate(DateTime date, Activity activity) async {
    final isar = await _service.db;
    final dayOnly = DateTime(date.year, date.month, date.day);

    await isar.writeTxn(() async {
      // Find the specific day
      final record = await isar.dailyRecords.filter().dateEqualTo(dayOnly).findFirst();
      
      if (record != null) {
        // Unlink the activity from this day
        record.activities.remove(activity);
        await record.activities.save(); 
      }
    });
    
    // Refresh the UI
    await loadData();
  }
}