import 'package:flutter/material.dart';
import 'package:neighbouro/screens/main_screen.dart';
void main(){
  runApp(Neighboroo());
}

class Neighboroo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "N",
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainScreen(),
    );
  }
}