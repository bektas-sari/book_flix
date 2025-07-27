import 'package:flutter/material.dart';
import 'pages/home_page.dart';

/// Entry point of the BookFlix application.
void main() {
  runApp(const BookFlixApp());
}

/// Root widget for BookFlix.
class BookFlixApp extends StatelessWidget {
  const BookFlixApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Define a dark color scheme reminiscent of popular streaming services.
    final Color primaryRed = const Color(0xFFE50914);
    final Color darkBackground = const Color(0xFF121212);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BookFlix',
      theme: ThemeData(
        useMaterial3: false,
        colorScheme: ColorScheme.dark(
          primary: primaryRed,
          secondary: primaryRed,
          surface: const Color(0xFF1F1F1F),
          background: darkBackground,
        ),
        scaffoldBackgroundColor: darkBackground,
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF141414),
          elevation: 0,
        ),
        tabBarTheme: TabBarThemeData(
          labelColor: Colors.white,
          unselectedLabelColor: Colors.grey.shade500,
          indicator: const UnderlineTabIndicator(
            borderSide: BorderSide(color: Colors.redAccent, width: 2),
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}