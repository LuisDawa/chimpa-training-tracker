import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:fl_chart/fl_chart.dart';
import '../providers/tracker_provider.dart';
import '../models/measures.dart';

class MyStatsScreen extends StatefulWidget {
  const MyStatsScreen({super.key});

  @override
  State<MyStatsScreen> createState() => _MyStatsScreenState();
}

class _MyStatsScreenState extends State<MyStatsScreen> {
  // Toggle between "Activities" and "Measures" views
  bool _showActivities = true; 
  
  // Which measurement the user wants to graph
  String _selectedMeasure = 'Weight'; 

  final List<String> _graphableParts = [
    'Weight', 'Neck', 'Shoulders', 'Chest', 'Waist', 'Hips', 
    'Left Arm', 'Right Arm', 'Left Forearm', 'Right Forearm', 
    'Left Thigh', 'Right Thigh', 'Left Calf', 'Right Calf'
  ];

  // --- DATA PROCESSING FOR ACTIVITIES ---
  // Looks at all DailyRecords and counts how many times each exercise was done
  Map<String, int> _calculateActivityFrequencies(TrackerProvider provider) {
    Map<String, int> counts = {};
    for (var record in provider.dailyRecords) {
      for (var activity in record.activities) {
        counts[activity.name] = (counts[activity.name] ?? 0) + 1;
            }
    }
    // Sort highest to lowest
    var sortedEntries = counts.entries.toList()..sort((a, b) => b.value.compareTo(a.value));
    return Map.fromEntries(sortedEntries);
  }

  // --- DATA PROCESSING FOR THE GRAPH ---
  // Converts your Isar Measures into X/Y coordinates for fl_chart
  List<FlSpot> _generateChartSpots(TrackerProvider provider) {
    // 1. Sort measures by date (oldest first so graph moves left to right)
    List<Measures> sortedMeasures = List.from(provider.measures)
      ..sort((a, b) => a.date.compareTo(b.date));

    List<FlSpot> spots = [];
    int xIndex = 0; // Using a simple 0, 1, 2 sequence for the X axis

    for (var m in sortedMeasures) {
      double? value;
      // Extract the correct value based on the dropdown choice
      switch (_selectedMeasure) {
        case 'Weight': value = m.weight; break;
        case 'Neck': value = m.neck; break;
        case 'Shoulders': value = m.shoulders; break;
        case 'Chest': value = m.chest; break;
        case 'Waist': value = m.waist; break;
        case 'Hips': value = m.hips; break;
        case 'Left Arm': value = m.leftArm; break;
        case 'Right Arm': value = m.rightArm; break;
        case 'Left Forearm': value = m.leftForearm; break;
        case 'Right Forearm': value = m.rightForearm; break;
        case 'Left Thigh': value = m.leftThigh; break;
        case 'Right Thigh': value = m.rightThigh; break;
        case 'Left Calf': value = m.leftCalf; break;
        case 'Right Calf': value = m.rightCalf; break;
      }

      // Only add a dot to the graph if they actually recorded that specific body part that day
      if (value != null) {
        spots.add(FlSpot(xIndex.toDouble(), value));
        xIndex++;
      }
    }
    return spots;
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
            // --- HEADER ---
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/stats.png', 
                    width: 69, 
                    height: 69,
                  ),
                  const SizedBox(width: 15),
                  const Text(
                    'My\nStats',
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

            // --- CUSTOM TOGGLE SWITCH ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.05),
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white.withValues(alpha: 0.1)),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () => setState(() => _showActivities = true),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                            color: _showActivities ? const Color(0xFFFFB84E) : Colors.transparent,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "Activities",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Fontdiner Swanky',
                              color: _showActivities ? Colors.black : Colors.white70,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () => setState(() => _showActivities = false),
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 15),
                          decoration: BoxDecoration(
                            color: !_showActivities ? const Color(0xFFFFB84E) : Colors.transparent,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Text(
                            "Evolution",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontFamily: 'Fontdiner Swanky',
                              color: !_showActivities ? Colors.black : Colors.white70,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 15),

            // --- THE DYNAMIC CONTENT ---
            Expanded(
              child: Consumer<TrackerProvider>(
                builder: (context, provider, child) {
                  return _showActivities 
                    ? _buildActivitiesList(provider) 
                    : _buildEvolutionGraph(provider);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- TAB 1: ACTIVITIES SUMMARY ---
  Widget _buildActivitiesList(TrackerProvider provider) {
    Map<String, int> frequencies = _calculateActivityFrequencies(provider);

    if (frequencies.isEmpty) {
      return const Center(child: Text("No activities logged yet!", style: TextStyle(color: Colors.white54, fontSize: 18)));
    }

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      itemCount: frequencies.length,
      itemBuilder: (context, index) {
        String activityName = frequencies.keys.elementAt(index);
        int count = frequencies.values.elementAt(index);

        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration: BoxDecoration(
            color: Colors.white.withValues(alpha: 0.05),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: const Color(0xFFFFB84E).withValues(alpha: 0.3), width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                activityName,
                style: const TextStyle(fontFamily: 'Fontdiner Swanky', color: Colors.white, fontSize: 20),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                decoration: BoxDecoration(
                  color: const Color(0xFFFFB84E),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Text(
                  "$count x",
                  style: const TextStyle(fontFamily: 'Fontdiner Swanky', color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  // --- TAB 2: EVOLUTION GRAPH ---
  Widget _buildEvolutionGraph(TrackerProvider provider) {
    List<FlSpot> spots = _generateChartSpots(provider);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: [
          // Dropdown to pick which stat to graph
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(20),
              border: Border.all(color: Colors.white.withValues(alpha: 0.2)),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                value: _selectedMeasure,
                isExpanded: true,
                dropdownColor: const Color(0xFF555555),
                icon: const Icon(Icons.arrow_drop_down, color: Color(0xFFFFB84E)),
                style: const TextStyle(color: Colors.white, fontSize: 18),
                items: _graphableParts.map((String part) {
                  return DropdownMenuItem<String>(value: part, child: Text(part));
                }).toList(),
                onChanged: (String? newValue) {
                  if (newValue != null) setState(() => _selectedMeasure = newValue);
                },
              ),
            ),
          ),
          
          const SizedBox(height: 30),

          // The fl_chart Line Chart
          Expanded(
            child: spots.isEmpty 
              ? Center(
                  child: Text(
                    "Not enough data for $_selectedMeasure yet.", 
                    style: const TextStyle(color: Colors.white54, fontSize: 18)
                  )
                )
              : Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.02),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: LineChart(
                    LineChartData(
                      gridData: FlGridData(
                        show: true, 
                        drawVerticalLine: false,
                        getDrawingHorizontalLine: (value) => FlLine(color: Colors.white.withValues(alpha: 0.1), strokeWidth: 1),
                      ),
                      titlesData: FlTitlesData(
                        rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                        topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                        bottomTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 40,
                            getTitlesWidget: (value, meta) => Text(
                              value.toInt().toString(), 
                              style: TextStyle(color: Colors.white.withValues(alpha: 0.5), fontSize: 12)
                            ),
                          ),
                        ),
                      ),
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          spots: spots,
                          isCurved: true,
                          color: const Color(0xFFFFB84E),
                          barWidth: 4,
                          isStrokeCapRound: true,
                          dotData: FlDotData(
                            show: true,
                            getDotPainter: (spot, percent, barData, index) => FlDotCirclePainter(
                              radius: 6,
                              color: const Color(0xFFFFB84E),
                              strokeWidth: 2,
                              strokeColor: Colors.black,
                            ),
                          ),
                          belowBarData: BarAreaData(
                            show: true,
                            color: const Color(0xFFFFB84E).withValues(alpha: 0.15),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}