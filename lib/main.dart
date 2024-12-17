import 'package:flutter/material.dart';
import 'package:movie_ticket_app_basmla/screens/booking_screen.dart';
import 'package:movie_ticket_app_basmla/screens/home_screen.dart';
import 'package:movie_ticket_app_basmla/screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF212429)
      ),
      routes: {
        "/" : (context) =>  const WelcomeScreen(),
        "HomeScreen" : (context) => HomeScreen(),
        "BookingScreen" : (context) => BookingScreen(movie: '',)
      },
    );
  }
}
