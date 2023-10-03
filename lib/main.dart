import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogzen/screens/home/home.dart';
import 'package:yogzen/screens/specific_needs/specific_needs.dart';

import 'global/color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YogZen',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: kdarkBlue),
        fontFamily: GoogleFonts.outfit().fontFamily,
        useMaterial3: true,
        textTheme: TextTheme(
          displayLarge: TextStyle(
            color: kblackHeading,
            fontSize: 22,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
