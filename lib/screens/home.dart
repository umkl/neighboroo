import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  int _digit;

  @override
  Widget build(BuildContext context) {
    return Scaffold(        
      body: Container(
        margin: EdgeInsets.only(top: 40.0, left: 10.0),
        
        color: Colors.red,
        
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
          side: BorderSide(color: Colors.red)
        ),
        width: 400.0,
        height: 100.0,
      ) 
    );
  }
}

