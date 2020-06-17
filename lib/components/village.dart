import 'package:flutter/material.dart';
import '../constants.dart';


class Village extends StatelessWidget {
  String imagePath;
  
  Village({this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.only(
          bottom: 0.0, top: 2.0, left: 10.0, right: 10.0),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(7)),
        color: box_color,
      ),
      child: ClipRRect(          
        borderRadius: BorderRadius.all(Radius.circular(7)),
        child: Image(
          image: AssetImage(imagePath),
          width: 10.0,
          height: 10.0,
        ),
      ),
    );
  }
}


