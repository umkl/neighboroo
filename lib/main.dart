import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/screens/main_screen.dart';


void main(){
  runApp(Neighboroo());
}

class Neighboroo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Neighboroo",
      theme: ThemeData(
        // we set poppins as our default font
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
        primaryColor: text_color,
        accentColor: text_color,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
    );
  }
}