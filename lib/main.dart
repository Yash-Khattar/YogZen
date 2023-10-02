import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogzen/screens/home/home.dart';

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
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: GoogleFonts.outfit().fontFamily,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
