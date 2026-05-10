import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/tracker_provider.dart';
import '../models/measures.dart';

class MyMeasuresScreen extends StatelessWidget {
  const MyMeasuresScreen({super.key});

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
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFFB84E),
        child: const Icon(Icons.add, color: Colors.black, size: 35),
        onPressed: () => Navigator.pushNamed(context, '/add_measures'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/measure.png'), 
                  const SizedBox(width: 15),
                  const Text(
                    'My\nMeasures',
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
            Expanded(
              child: Consumer<TrackerProvider>(
                builder: (context, provider, child) {
                  final measuresList = provider.measures.reversed.toList();

                  if (measuresList.isEmpty) {
                    return const Center(
                      child: Text(
                        "No measures recorded yet.\nTap the + button to add one!",
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
                    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    itemCount: measuresList.length,
                    itemBuilder: (context, index) {
                      final measure = measuresList[index];
                      return _buildMeasureCard(context, measure); 
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

  void _confirmDelete(BuildContext context, int id) {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: const Color(0xFF555555),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        title: const Text(
          "Delete Record?", 
          style: TextStyle(fontFamily: 'Fontdiner Swanky', color: Color(0xFFFFB84E))
        ),
        content: const Text(
          "Are you sure you want to delete this measurement? You can't undo this.", 
          style: TextStyle(color: Colors.white, fontSize: 16)
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx), // Cancel
            child: const Text("CANCEL", style: TextStyle(color: Colors.white70, fontSize: 16)),
          ),
          TextButton(
            onPressed: () {
              // Call the provider to delete, then close the dialog
              context.read<TrackerProvider>().deleteMeasures(id);
              Navigator.pop(ctx);
            },
            child: const Text("DELETE", style: TextStyle(color: Colors.redAccent, fontSize: 16, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }

  Widget _buildMeasureCard(BuildContext context, Measures measure) {
    String formattedDate = "${measure.date.day.toString().padLeft(2, '0')}/${measure.date.month.toString().padLeft(2, '0')}/${measure.date.year}";
    List<String> recordedParts = _getRecordedParts(measure);

    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.05),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xFFFFB84E).withValues(alpha: 0.3), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Date Row + Delete Button
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.calendar_today, color: Color(0xFFFFB84E), size: 18),
                  const SizedBox(width: 8),
                  Text(
                    formattedDate,
                    style: const TextStyle(
                      fontFamily: 'Fontdiner Swanky',
                      color: Color(0xFFFFB84E),
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: const Icon(Icons.delete_outline, color: Colors.redAccent),
                onPressed: () => _confirmDelete(context, measure.id),
                constraints: const BoxConstraints(), // Keeps the button from taking up too much padding
                padding: EdgeInsets.zero,
              ),
            ],
          ),
          const SizedBox(height: 15),

          if (measure.weight != null)
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                "Weight: ${measure.weight} kg",
                style: const TextStyle(fontFamily: 'Fontdiner Swanky', color: Colors.white, fontSize: 22),
              ),
            ),

          if (recordedParts.isNotEmpty)
            ...recordedParts.map((partStr) => Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Text(
                partStr,
                style: TextStyle(fontFamily: 'Fontdiner Swanky', color: Colors.white.withValues(alpha: 0.8), fontSize: 18),
              ),
            )),
        ],
      ),
    );
  }

  List<String> _getRecordedParts(Measures m) {
    List<String> parts = [];
    if (m.neck != null) parts.add("Neck: ${m.neck} cm");
    if (m.shoulders != null) parts.add("Shoulders: ${m.shoulders} cm");
    if (m.chest != null) parts.add("Chest: ${m.chest} cm");
    if (m.waist != null) parts.add("Waist: ${m.waist} cm");
    if (m.hips != null) parts.add("Hips: ${m.hips} cm");
    if (m.leftArm != null) parts.add("Left Arm: ${m.leftArm} cm");
    if (m.rightArm != null) parts.add("Right Arm: ${m.rightArm} cm");
    if (m.leftForearm != null) parts.add("Left Forearm: ${m.leftForearm} cm");
    if (m.rightForearm != null) parts.add("Right Forearm: ${m.rightForearm} cm");
    if (m.leftWrist != null) parts.add("Left Wrist: ${m.leftWrist} cm");
    if (m.rightWrist != null) parts.add("Right Wrist: ${m.rightWrist} cm");
    if (m.leftThigh != null) parts.add("Left Thigh: ${m.leftThigh} cm");
    if (m.rightThigh != null) parts.add("Right Thigh: ${m.rightThigh} cm");
    if (m.leftCalf != null) parts.add("Left Calf: ${m.leftCalf} cm");
    if (m.rightCalf != null) parts.add("Right Calf: ${m.rightCalf} cm");
    return parts;
  }
}