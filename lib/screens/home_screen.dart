import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF444444),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // --- HEADER SECTION (Logo and Title) ---
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
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

              const SizedBox(height: 25),

              // --- CENTRAL IMAGE (Responsive and Not Cut) ---
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.0), 
                    child: Image.asset(
                      'assets/images/chimpa.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 15),

              // --- INTERACTIVE BUTTONS SECTION ---
              Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 280),
                  child: Column(
                    children: [
                      _buildButton(
                        context,
                        label: 'My Stats',
                        iconPath: 'assets/images/stats.png',
                        onTap: () => Navigator.pushNamed(context, '/stats'),
                      ),
                      const SizedBox(height: 12),
                      
                      _buildButton(
                        context,
                        label: 'View Calendar',
                        iconPath: 'assets/images/calendar.png',
                        onTap: () => Navigator.pushNamed(context, '/calendar'),
                      ),
                      const SizedBox(height: 12),
                      
                      _buildButton(
                        context,
                        label: 'My Activities',
                        iconPath: 'assets/images/banana.png',
                        onTap: () => Navigator.pushNamed(context, '/activity'),
                      ),
                      const SizedBox(height: 12),
                      
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
            ],
          ),
        ),
      ),
    );
  }

  // Helper function to build the orange menu buttons (reusable)
  Widget _buildButton(
    BuildContext context, {
    required String label,
    required String iconPath,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 55,
        decoration: BoxDecoration(
          color: const Color(0xFFFFB84E),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              iconPath,
              width: 35,
              height: 35,
            ),
            const SizedBox(width: 12),
            Text(
              label,
              style: const TextStyle(
                fontFamily: 'Fontdiner Swanky',
                color: Colors.black,
                fontSize: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}