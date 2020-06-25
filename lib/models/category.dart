import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Category extends StatelessWidget {
  String assetName;
  Category(this.assetName);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      width: 60.0,
      height: 60.0,
      color: Colors.green,
      
      child: SvgPicture.asset(
        "assets/icons/chat-light-1.svg",
        color:Colors.black,
      ),
    );
  }
}
// SvgPicture.asset(
//       assetName,  
//       width: 10.0,
//       height: 10.0    
//       allowDrawingOutsideViewBox: true,
//     );