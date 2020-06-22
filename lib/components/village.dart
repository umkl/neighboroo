import 'package:flutter/material.dart';
import '../constants.dart';


class Village extends StatelessWidget {
  String imagePath;
  String name;
  double neighboroos;
  double size;

  
  Village({this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.only(
          bottom: 0.0, top: 2.0, left: 10.0, right: 10.0),
      width: 100,
      height: 130,
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(7)),
        color: box_color,
      ),
      child: Container(
        margin: new EdgeInsets.only(
          bottom:  MediaQuery.of(context).size.height* 0.05, top:1.0, left: 1.0, right: 1.0),
        decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(3)),
        color: box_color,
      ),
        child: ClipRRect(          
          borderRadius: BorderRadius.all(Radius.circular(3)),
          
          child: Image(
            image: AssetImage(imagePath),          
            width: 10.0,
            height: 10.0,
            fit: BoxFit.cover
          ),
        ),
      ),
    );
  }
}


