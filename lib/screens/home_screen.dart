import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF444444),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20), // Keeps it from touching edges
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // --- HEADER SECTION ---
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/dumbbell.png'),
                      const SizedBox(width: 15),
                      const Text(
                        'Chimpa\nTraining\nTracker',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Fontdiner Swanky',
                          color: Color(0xFFFFB84E),
                          fontSize: 36,
                          height: 1.2,
                        ),
                      ),
                      const SizedBox(width: 15),
                      Image.asset('assets/images/arm.png'),
                    ],
                  ),

                  const SizedBox(height: 15), // Slightly reduced gap

                  // --- CENTRAL IMAGE ---
                  Container(
                    width: 250, 
                    height: 264, 
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/chimpa.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(height: 25), // Gap before buttons

                  // --- INTERACTIVE BUTTONS ---
                  
                  // My Stats
                  _buildButton(
                    context,
                    label: 'My Stats',
                    iconPath: 'assets/images/stats.png',
                    onTap: () => Navigator.pushNamed(context, '/stats'),
                  ),
                  const SizedBox(height: 15),
                  
                  // View Calendar
                  _buildButton(
                    context,
                    label: 'View Calendar',
                    iconPath: 'assets/images/calendar.png',
                    onTap: () => Navigator.pushNamed(context, '/calendar'),
                  ),
                  const SizedBox(height: 15),
                  
                  // My Activities
                  _buildButton(
                    context,
                    label: 'My Activities',
                    iconPath: 'assets/images/banana.png',
                    onTap: () => Navigator.pushNamed(context, '/activity'),
                  ),
                  const SizedBox(height: 15),
                  
                  // My Measures
                  _buildButton(
                    context,
                    label: 'My Measures',
                    iconPath: 'assets/images/measure.png',
                    onTap: () => Navigator.pushNamed(context, '/measures'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(
    BuildContext context, {
    required String label,
    required String iconPath,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 310,
        height: 75,
        decoration: BoxDecoration(
          color: const Color(0xFFFFB84E),
          borderRadius: BorderRadius.circular(40),
        ),
        // A Row naturally groups the items and centers the whole block
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              width: 45, // Keeps the icons uniformly sized
              height: 45,
            ),
            const SizedBox(width: 15),
            Text(
              label,
              style: const TextStyle(
                fontFamily: 'Fontdiner Swanky',
                color: Colors.black,
                fontSize: 22, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}