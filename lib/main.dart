import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'providers/tracker_provider.dart';
import 'screens/home_screen.dart';
import 'screens/my_activities_screen.dart';
import 'screens/my_measures_screen.dart';
import 'screens/add_measures_screen.dart';
import 'screens/calendar_screen.dart';
import 'screens/my_stats_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    ChangeNotifierProvider(
      create: (context) => TrackerProvider()..loadData(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chimpa Training Tracker',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF444444), 
        fontFamily: 'Fontdiner Swanky',
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFFFB84E), 
          primary: const Color(0xFFFFB84E),
        ),
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: NoAnimationPageTransitionsBuilder(),
            TargetPlatform.iOS: NoAnimationPageTransitionsBuilder(),
          },
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/activity': (context) => const MyActivitiesScreen(),
        '/calendar': (context) => const CalendarScreen(),
        '/measures': (context) => const MyMeasuresScreen(), 
        '/add_measures': (context) => const AddMeasuresScreen(), 
        '/stats': (context) => const MyStatsScreen(),
      },
    );
  }
}

// Custom builder to make transitions instant
class NoAnimationPageTransitionsBuilder extends PageTransitionsBuilder {
  const NoAnimationPageTransitionsBuilder();

  @override
  Widget buildTransitions<T>(
    PageRoute<T> route,
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return child; // Returns the screen immediately with no effects
  }
}

// Temporary screen to prevent crashes
class PlaceholderScreen extends StatelessWidget {
  final String title;
  const PlaceholderScreen({super.key, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, iconTheme: const IconThemeData(color: Color(0xFFFFB84E))),
      body: Center(child: Text(title, style: const TextStyle(color: Color(0xFFFFB84E), fontSize: 32))),
    );
  }
}