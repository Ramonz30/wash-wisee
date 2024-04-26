import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundry_app/splash_screen.dart';

final theme = ThemeData(
  useMaterial3: false,
  textTheme: GoogleFonts.aBeeZeeTextTheme(),
);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const SplashScreen(),
    );
  }
}
