import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movies_plus/landing_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          textTheme: GoogleFonts.getTextTheme('Inter').apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,
          ),
          colorScheme: const ColorScheme(
              brightness: Brightness.light,
              primary: Color(0xff32A873),
              onPrimary: Color(0xff121212),
              secondary: Colors.transparent,
              onSecondary: Color(0xff32A873),
              error: Colors.red,
              onError: Colors.white,
              surface: Color(0xff121212),
              onBackground: Color(0xff121212),
              background: Colors.transparent,
              onSurface: Colors.white),
        ),
        home: const LandingPage());
  }
}
