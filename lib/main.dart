import 'package:fitgram/screens/DashboardScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fitgram/screens/onboarding_screen.dart';
import 'package:fitgram/screens/profile_screen.dart';
import 'package:fitgram/screens/ExplorePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.interTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: OnboardingScreen(),
      routes: <String, WidgetBuilder>{
          "/home": (BuildContext context) => DashBoardPage(),
          "/profile": (BuildContext context) => ProfileScreen(),
          "/explore": (BuildContext context) => ExplorePage(),
          "/onboard": (BuildContext context) => OnboardingScreen(),
          // "/profile": (BuildContext context) => ProfilePage(),
          // "/hprofile": (BuildContext context) => HospitalProfilePage(data: {}),
        }
    );
  }
}
