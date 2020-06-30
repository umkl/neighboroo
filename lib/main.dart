import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neighboroo/Neighboroo.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/screens/categories/main-screen.dart';

void main(){
  runApp(//function to compile the whole app and put it on the viewport
    NeighborooRun()
    );
}

class NeighborooRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {//build function
    return MaterialApp(
      title: "Neighboroo",
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),// we set poppins as our default font
        primaryColor: text_color,
        accentColor: text_color,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Neighboroo(),
    );
  }
}