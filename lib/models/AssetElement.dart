import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AssetElement extends StatelessWidget {
  String assetName;
  double padding;
  double height;
  double width;

  AssetElement(this.assetName, {this.padding, this.width, this.height});

  @override
  Widget build(BuildContext context) {        
    return InkWell(
          child: Container(                  
        padding: EdgeInsets.all(this.padding != null ? this.padding : 3.0),  
        child: Image.asset(
          this.assetName, 
          height: this.height,
          width: this.width,          
        ),
      ),
    );
  }
}
