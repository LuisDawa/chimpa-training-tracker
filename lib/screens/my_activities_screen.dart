import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/tracker_provider.dart';
import '../models/activity.dart'; 

class MyActivitiesScreen extends StatefulWidget {
  const MyActivitiesScreen({super.key});

  @override
  State<MyActivitiesScreen> createState() => _MyActivitiesScreenState();
}

class _MyActivitiesScreenState extends State<MyActivitiesScreen> {
  final _activityController = TextEditingController();

  @override
  void dispose() {
    _activityController.dispose();
    super.dispose();
  }

  void _attemptSave() {
    final text = _activityController.text.trim();
    if (text.isEmpty) return; 

    final provider = context.read<TrackerProvider>();

    if (provider.activityExists(text)) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text(
            'This activity already exists in your list!',
            style: TextStyle(fontFamily: 'Fontdiner Swanky', color: Colors.black),
          ),
          backgroundColor: const Color(0xFFFFB84E),
          behavior: SnackBarBehavior.floating,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      );
      return;
    }

    provider.addActivity(text);
    _activityController.clear();
    FocusScope.of(context).unfocus(); 
  }

  void _confirmDelete(BuildContext context, int id) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: const Color(0xFF555555),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text(
          "Delete Activity?", 
          style: TextStyle(fontFamily: 'Fontdiner Swanky', color: Color(0xFFFFB84E))
        ),
        content: const Text(
          "Are you sure you want to delete this activity? You can't undo this.", 
          style: TextStyle(color: Colors.white, fontSize: 16)
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text("CANCEL", style: TextStyle(color: Colors.white70, fontSize: 16)),
          ),
          TextButton(
            onPressed: () {
              context.read<TrackerProvider>().deleteActivity(id);
              Navigator.pop(ctx); 
            },
            child: const Text("DELETE", style: TextStyle(color: Colors.redAccent, fontSize: 16, fontWeight: FontWeight.bold)),
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
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/banana.png'), 
                      const SizedBox(width: 15),
                      const Text(
                        'My\nActivities',
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
                  const SizedBox(height: 30), 
                  _buildInputLabel("Activity Name"),
                  _buildTextField(_activityController, "e.g. Squats"),
                  const SizedBox(height: 30), 
                  GestureDetector(
                    onTap: _attemptSave,
                    child: Container(
                      width: 310,
                      height: 70,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFB84E),
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Center(
                        child: Text(
                          'SAVE ACTIVITY',
                          style: TextStyle(
                            fontFamily: 'Fontdiner Swanky',
                            color: Colors.black,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Divider(color: Colors.white24, thickness: 1, indent: 30, endIndent: 30),
            Expanded(
              child: Consumer<TrackerProvider>(
                builder: (context, provider, child) {
                  final activitiesList = provider.activities.reversed.toList();

                  if (activitiesList.isEmpty) {
                    return const Center(
                      child: Text(
                        "No activities recorded yet.\nStart typing above!",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Fontdiner Swanky',
                          color: Colors.white54,
                          fontSize: 18,
                          height: 1.5,
                        ),
                      ),
                    );
                  }

                  return ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    itemCount: activitiesList.length,
                    itemBuilder: (context, index) {
                      final activity = activitiesList[index];
                      return _buildActivityCard(context, activity);
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

  Widget _buildActivityCard(BuildContext context, Activity activity) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFFFB84E).withValues(alpha: 0.3), width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
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
            onPressed: () => _confirmDelete(context, activity.id), 
            constraints: const BoxConstraints(), 
            padding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }

  Widget _buildInputLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(label, style: const TextStyle(fontFamily: 'Fontdiner Swanky', color: Color(0xFFFFB84E), fontSize: 18)),
      ),
    );
  }

  Widget _buildTextField(TextEditingController controller, String hint) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.1), 
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        controller: controller,
        style: const TextStyle(color: Colors.white, fontSize: 18),
        onSubmitted: (_) => _attemptSave(), 
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white.withValues(alpha: 0.3)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: const BorderSide(color: Color(0xFFFFB84E), width: 1)),
          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(20), borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.3))),
        ),
      ),
    );
  }
}