import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:neighboroo/Identify.dart';
import 'package:neighboroo/Neighboroo.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/screens/Neighboroo/main-screen.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;


void main()=>{runApp(NeighborooRun())};

class NeighborooRun extends StatelessWidget {
  
  // @override
  // Widget build(BuildContext context) {//build function
  //   return MaterialApp(
  //     title: "Neighboroo",
  //     theme: ThemeData(
  //       textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),// we set poppins as our default font
  //       primaryColor: text_color,
  //       accentColor: text_color,
  //       visualDensity: VisualDensity.adaptivePlatformDensity,
  //     ),
  //     home: Neighboroo(),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Identify()
    );
  }
  
}