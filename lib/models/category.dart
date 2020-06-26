import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Category extends StatelessWidget {
  String assetName;
  double padding;

  Category(this.assetName, {this.padding});

  @override
  Widget build(BuildContext context) {
    
    
    return InkWell(
          child: Container(                  
        padding: EdgeInsets.all(this.padding != null ? this.padding : 3.0),  
        child: Image.asset(
          this.assetName, 
        ),
        
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