import 'package:flutter/material.dart';
import 'package:neighboroo/constants.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg_main,
      appBar: AppBar(
        
        actions: <Widget>[
          Container(
            margin: new EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.18),
            color: Colors.green,
            width: MediaQuery.of(context).size.width * 0.78,
            height: 10.0,
            
          )
        ],        
        elevation: 0,
        // title: Text("My Neighboroo",
        //   style: TextStyle(
        //     color: Colors.grey[800],
        //     fontWeight: FontWeight.w800
        //   )
        // ),

        // centerTitle: false,
          
      )
    );
  }
}
