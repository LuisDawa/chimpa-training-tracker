import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/tracker_provider.dart';
import '../models/activity.dart';

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime _selectedDate = DateTime.now();

  String _getDateSuffix(DateTime date) {
    final now = DateTime.now();
    final today = DateTime(now.year, now.month, now.day);
    final yesterday = today.subtract(const Duration(days: 1));
    final selected = DateTime(date.year, date.month, date.day);

    if (selected == today) {
      return " (Today)";
    } else if (selected == yesterday) {
      return " (Yesterday)";
    }
    return ""; 
  }

  void _confirmRemoveFromDate(BuildContext context, TrackerProvider provider, Activity activity) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: const Color(0xFF555555),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text(
          "Remove Activity?", 
          style: TextStyle(fontFamily: 'Fontdiner Swanky', color: Color(0xFFFFB84E))
        ),
        content: const Text(
          "Remove this activity from this specific day? (It will still remain in your Activities List).", 
          style: TextStyle(color: Colors.white, fontSize: 16)
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text("CANCEL", style: TextStyle(color: Colors.white70, fontSize: 16)),
          ),
          TextButton(
            onPressed: () {
              provider.removeActivityFromDate(_selectedDate, activity);
              Navigator.pop(ctx);
            },
            child: const Text("REMOVE", style: TextStyle(color: Colors.redAccent, fontSize: 16, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  void _showAddActivityDialog(BuildContext context, TrackerProvider provider) {
    final TextEditingController activityController = TextEditingController();

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: const Color(0xFF555555),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: Text(
          "Add to ${_selectedDate.day}/${_selectedDate.month}${_getDateSuffix(_selectedDate)}",
          style: const TextStyle(fontFamily: 'Fontdiner Swanky', color: Color(0xFFFFB84E), fontSize: 20),
        ),
        content: Container(
          constraints: const BoxConstraints(maxHeight: 350), 
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min, 
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  controller: activityController,
                  style: const TextStyle(color: Colors.white, fontSize: 18),
                  decoration: InputDecoration(
                    hintText: "Type new activity...",
                    hintStyle: TextStyle(color: Colors.white.withValues(alpha: 0.3)),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    border: InputBorder.none,
                  ),
                ),
              ),
              
              const SizedBox(height: 15),
              
              if (provider.activities.isNotEmpty) ...[
                const Text(
                  "Or select existing:",
                  style: TextStyle(fontFamily: 'Fontdiner Swanky', color: Colors.white70, fontSize: 16),
                ),
                const SizedBox(height: 10),
                
                Flexible( 
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withValues(alpha: 0.05),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
                    ),
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: provider.activities.length,
                      itemBuilder: (context, index) {
                        final existingActivity = provider.activities.reversed.toList()[index];
                        
                        return ListTile(
                          title: Text(
                            existingActivity.name,
                            style: const TextStyle(color: Colors.white, fontSize: 18),
                          ),
                          trailing: const Icon(Icons.add_circle_outline, color: Color(0xFFFFB84E)),
                          onTap: () {
                            provider.addActivityToDate(_selectedDate, existingActivity);
                            Navigator.pop(ctx);
                          },
                        );
                      },
                    ),
                  ),
                ),
              ]
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text("CANCEL", style: TextStyle(color: Colors.white70, fontSize: 16)),
          ),
          TextButton(
            onPressed: () {
              final newText = activityController.text.trim();
              
              if (newText.isNotEmpty) {
                if (provider.activityExists(newText)) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: const Text(
                        'This activity already exists! Select it from the list below.',
                        style: TextStyle(fontFamily: 'Fontdiner Swanky', color: Colors.black),
                      ),
                      backgroundColor: const Color(0xFFFFB84E),
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                  );
                  return; 
                }

                final newActivity = Activity()..name = newText;
                provider.addActivityToDate(_selectedDate, newActivity);
                Navigator.pop(ctx);
              }
            },
            child: const Text("SAVE NEW", style: TextStyle(color: Color(0xFFFFB84E), fontSize: 16, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF444444),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFFFFB84E)),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/calendar.png', width: 69, height: 69), 
                  const SizedBox(width: 15),
                  const Text(
                    'My\nCalendar',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Fontdiner Swanky',
                      color: Color(0xFFFFB84E),
                      fontSize: 32,
                      height: 1.1,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.05),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: const Color(0xFFFFB84E).withValues(alpha: 0.3), width: 1),
                ),
                child: Theme(
                  data: ThemeData.dark().copyWith(
                    colorScheme: const ColorScheme.dark(
                      primary: Color(0xFFFFB84E), 
                      onPrimary: Colors.black,    
                      surface: Colors.transparent, 
                      onSurface: Colors.white,    
                    ),
                    textButtonTheme: TextButtonThemeData(
                      style: TextButton.styleFrom(
                        foregroundColor: const Color(0xFFFFB84E), 
                      ),
                    ),
                  ),
                  child: CalendarDatePicker(
                    initialDate: _selectedDate,
                    firstDate: DateTime(2020),
                    lastDate: DateTime.now().add(const Duration(days: 365)),
                    onDateChanged: (DateTime newDate) {
                      setState(() {
                        _selectedDate = newDate;
                      });
                    },
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Records for ${_selectedDate.day}/${_selectedDate.month}${_getDateSuffix(_selectedDate)}",
                    style: const TextStyle(fontFamily: 'Fontdiner Swanky', color: Colors.white70, fontSize: 16),
                  ),
                  Consumer<TrackerProvider>(
                    builder: (context, provider, child) {
                      return TextButton.icon(
                        onPressed: () => _showAddActivityDialog(context, provider),
                        icon: const Icon(Icons.add_circle, color: Color(0xFFFFB84E)),
                        label: const Text(
                          "Add", 
                          style: TextStyle(fontFamily: 'Fontdiner Swanky', color: Color(0xFFFFB84E), fontSize: 18)
                        ),
                      );
                    }
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.white24, thickness: 1, indent: 30, endIndent: 30),
            Expanded(
              child: Consumer<TrackerProvider>(
                builder: (context, provider, child) {
                  final normalizedSelected = DateTime(_selectedDate.year, _selectedDate.month, _selectedDate.day);
                  
                  final dailyRecord = provider.dailyRecords.where((record) => 
                      record.date.year == normalizedSelected.year &&
                      record.date.month == normalizedSelected.month &&
                      record.date.day == normalizedSelected.day
                  ).firstOrNull;

                  if (dailyRecord == null || dailyRecord.activities.isEmpty) {
                    return const Center(
                      child: Text(
                        "Rest Day!\nNo activities recorded.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Fontdiner Swanky',
                          color: Colors.white54,
                          fontSize: 20,
                          height: 1.5,
                        ),
                      ),
                    );
                  }

                  return ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                    itemCount: dailyRecord.activities.length,
                    itemBuilder: (context, index) {
                      final activity = dailyRecord.activities.elementAt(index);
                      
                      return Container(
                        margin: const EdgeInsets.only(bottom: 12),
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                        decoration: BoxDecoration(
                          color: Colors.white.withValues(alpha: 0.05),
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: const Color(0xFFFFB84E).withValues(alpha: 0.3), width: 1),
                        ),
                        child: Row(
                          children: [
                            const Icon(Icons.check_circle, color: Color(0xFFFFB84E), size: 24),
                            const SizedBox(width: 15),
                            Expanded(
                              child: Text(
                                activity.name,
                                style: const TextStyle(
                                  fontFamily: 'Fontdiner Swanky',
                                  color: Colors.white,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete_outline, color: Colors.redAccent),
                              onPressed: () => _confirmRemoveFromDate(context, provider, activity), 
                              constraints: const BoxConstraints(), 
                              padding: EdgeInsets.zero,
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}