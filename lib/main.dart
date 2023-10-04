import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:yogzen/components/nav_bar_scree.dart';
import 'package:yogzen/global/color.dart';
import 'package:yogzen/screens/community/community_screen.dart';
import 'package:yogzen/screens/home/home.dart';
import 'package:yogzen/screens/specific_needs/specific_needs.dart';
import 'package:yogzen/screens/user_profile/user_page.dart';

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
              fontSize: 28,
              fontWeight: FontWeight.w600,
              color: kblackHeading,
            ),
            headlineLarge: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: kblackHeading,
            ),
            headlineMedium: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: kblackHeading,
            ),
          )),
      home: const NavScreen(),
      routes: {
        NavScreen.routeName: (context) => NavScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        userPageScreen.routeName: (context) => userPageScreen(),
        SpecificNeeds.routeName: (context) => SpecificNeeds(),
        CommunityScreen.routeName: (context) => CommunityScreen(),
      },
    );
  }
}
