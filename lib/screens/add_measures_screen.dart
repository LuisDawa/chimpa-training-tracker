import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/tracker_provider.dart';
import '../models/measures.dart';

class MeasureEntry {
  String? bodyPart;
  final TextEditingController sizeController = TextEditingController();
}

class AddMeasuresScreen extends StatefulWidget {
  const AddMeasuresScreen({super.key});

  @override
  State<AddMeasuresScreen> createState() => _AddMeasuresScreenState();
}

class _AddMeasuresScreenState extends State<AddMeasuresScreen> {
  final _weightController = TextEditingController();

  final List<MeasureEntry> _entries = [MeasureEntry()];

  final List<String> _bodyParts = [
    'Neck', 'Shoulders', 'Chest', 'Waist', 'Hips', 
    'Left Arm', 'Right Arm', 'Left Forearm', 'Right Forearm', 
    'Left Wrist', 'Right Wrist', 'Left Thigh', 'Right Thigh', 
    'Left Calf', 'Right Calf'
  ];

  @override
  void dispose() {
    _weightController.dispose();
    for (var entry in _entries) {
      entry.sizeController.dispose();
    }
    super.dispose();
  }

  // Filter Available Parts
  List<String> _getAvailableParts(int currentIndex) {
    // Find all parts that are currently selected in OTHER rows
    List<String> usedInOtherRows = [];
    for (int i = 0; i < _entries.length; i++) {
      if (i != currentIndex && _entries[i].bodyPart != null) {
        usedInOtherRows.add(_entries[i].bodyPart!);
      }
    }
    // Return the full list MINUS the ones already used
    return _bodyParts.where((part) => !usedInOtherRows.contains(part)).toList();
  }

  void _addNewEntry() {
    // Only allow adding a new row if we haven't used up all parts
    if (_entries.length < _bodyParts.length) {
      setState(() {
        _entries.add(MeasureEntry());
      });
    }
  }

  void _removeEntry(int index) {
    setState(() {
      _entries[index].sizeController.dispose(); // Free memory
      _entries.removeAt(index);
    });
  }

  void _attemptSave() {
    bool hasAnySize = _entries.any((e) => e.bodyPart != null && e.sizeController.text.isNotEmpty);
    
    if (_weightController.text.isEmpty && !hasAnySize) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text(
            'Please enter a weight or at least one body measure!',
            style: TextStyle(fontFamily: 'Fontdiner Swanky', color: Colors.black),
          ),
          backgroundColor: const Color(0xFFFFB84E),
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }

    final measure = Measures()..date = DateTime.now();

    if (_weightController.text.isNotEmpty) {
      String wText = _weightController.text.replaceAll(',', '.');
      measure.weight = double.tryParse(wText);
    }

    for (var entry in _entries) {
      if (entry.bodyPart != null && entry.sizeController.text.isNotEmpty) {
        String sText = entry.sizeController.text.replaceAll(',', '.');
        double parsedSize = double.tryParse(sText) ?? 0.0;
        
        switch (entry.bodyPart) {
          case 'Neck': measure.neck = parsedSize; break;
          case 'Shoulders': measure.shoulders = parsedSize; break;
          case 'Chest': measure.chest = parsedSize; break;
          case 'Waist': measure.waist = parsedSize; break;
          case 'Hips': measure.hips = parsedSize; break;
          case 'Left Arm': measure.leftArm = parsedSize; break;
          case 'Right Arm': measure.rightArm = parsedSize; break;
          case 'Left Forearm': measure.leftForearm = parsedSize; break;
          case 'Right Forearm': measure.rightForearm = parsedSize; break;
          case 'Left Wrist': measure.leftWrist = parsedSize; break;
          case 'Right Wrist': measure.rightWrist = parsedSize; break;
          case 'Left Thigh': measure.leftThigh = parsedSize; break;
          case 'Right Thigh': measure.rightThigh = parsedSize; break;
          case 'Left Calf': measure.leftCalf = parsedSize; break;
          case 'Right Calf': measure.rightCalf = parsedSize; break;
        }
      }
    }

    context.read<TrackerProvider>().addMeasures(measure);
    Navigator.pop(context);
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
                  Image.asset('assets/images/measure.png'),
                  const SizedBox(width: 15),
                  const Text(
                    'Add\nMeasures',
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
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildInputLabel("Body Weight (kg)"),
                    _buildTextField(_weightController, "0.0", isNumber: true),
                    const SizedBox(height: 30),

                    const Divider(color: Colors.white24, thickness: 1),
                    const SizedBox(height: 20),

                    _buildInputLabel("Body Measurements"),
                    
                    ...List.generate(_entries.length, (index) {
                      return _buildDynamicEntryRow(index);
                    }),

                    const SizedBox(height: 10),

                    // Hide Add Button if full
                    if (_entries.length < _bodyParts.length)
                      TextButton.icon(
                        onPressed: _addNewEntry,
                        icon: const Icon(Icons.add_circle_outline, color: Color(0xFFFFB84E)),
                        label: const Text(
                          "Add Another Part",
                          style: TextStyle(
                            fontFamily: 'Fontdiner Swanky', 
                            color: Color(0xFFFFB84E), 
                            fontSize: 18
                          ),
                        ),
                      ),

                    const SizedBox(height: 40),

                    GestureDetector(
                      onTap: _attemptSave,
                      child: Container(
                        height: 75,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFFB84E),
                          borderRadius: BorderRadius.circular(40),
                        ),
                        child: const Center(
                          child: Text(
                            'SAVE MEASURES',
                            style: TextStyle(
                              fontFamily: 'Fontdiner Swanky',
                              color: Colors.black,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDynamicEntryRow(int index) {
    MeasureEntry entry = _entries[index];
    
    // Grab the freshly filtered list for this specific dropdown
    List<String> availablePartsForThisRow = _getAvailableParts(index);

    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: entry.bodyPart,
                  hint: Text("Part...", style: TextStyle(color: Colors.white.withValues(alpha: 0.3))),
                  isExpanded: true,
                  dropdownColor: const Color(0xFF555555),
                  icon: const Icon(Icons.arrow_drop_down, color: Color(0xFFFFB84E)),
                  style: const TextStyle(color: Colors.white, fontSize: 16),
                  items: availablePartsForThisRow.map((String part) {
                    return DropdownMenuItem<String>(value: part, child: Text(part));
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      entry.bodyPart = newValue;
                    });
                  },
                ),
              ),
            ),
          ),
          const SizedBox(width: 10),

          Expanded(
            flex: 2,
            child: _buildTextField(
              entry.sizeController, 
              "cm", 
              isNumber: true, 
              enabled: entry.bodyPart != null
            ),
          ),

          // --- Delete Button ---
          // Allows deletion. If they delete a row, that body part returns to the available pool!
          IconButton(
            icon: const Icon(Icons.close, color: Colors.white54),
            onPressed: () => _removeEntry(index),
          )
        ],
      ),
    );
  }

  Widget _buildInputLabel(String label) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, bottom: 8),
      child: Text(label, style: const TextStyle(fontFamily: 'Fontdiner Swanky', color: Color(0xFFFFB84E), fontSize: 18)),
    );
  }

  Widget _buildTextField(TextEditingController controller, String hint, {bool isNumber = false, bool enabled = true}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: enabled ? 0.1 : 0.05),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        controller: controller,
        enabled: enabled,
        keyboardType: isNumber ? const TextInputType.numberWithOptions(decimal: true) : TextInputType.text,
        style: TextStyle(color: enabled ? Colors.white : Colors.white54, fontSize: 16),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: Colors.white.withValues(alpha: 0.3)),
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), 
            borderSide: const BorderSide(color: Color(0xFFFFB84E), width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), 
            borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.3)),
          ),
          // REMOVED 'const' from the OutlineInputBorder here!
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20), 
            borderSide: const BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}