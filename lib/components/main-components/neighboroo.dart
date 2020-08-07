import 'package:flutter/material.dart';
import '../../constants.dart';


class NbNeighborooMain extends StatelessWidget {
  String imagePath;
  String name;
  double neighboroos;
  double size;

  NbNeighborooMain({this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.only(
          bottom: 0.0, top: 2.0, left: 10.0, right: 5.0),
      width: 100,
      height: 130,
      padding: EdgeInsets.only(top: 4.0, left: 4.0, right: 4.0, bottom: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(7)),
        color: box_color,
      ),
      child: Column(
        
        children: <Widget>[
          Container(
            // margin: new EdgeInsets.only(
            //   bottom:  MediaQuery.of(context).size.height* 0.05, top:1.0, left: 1.0, right: 1.0),
            decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(3)),
            color: box_color,
          ),
            child: ClipRRect(          
              borderRadius: BorderRadius.all(Radius.circular(3)),
              
              child: Image(
                image: AssetImage(imagePath),          
                fit: BoxFit.cover
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
              child: Text("data",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16
              ),
            ),
          )
        ],      
      ),
    );
  }
}

class NbAddNeighborooMain extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: red,
      enableFeedback: true,
        onTap: (){print("object");},
          child: Container(
        margin: new EdgeInsets.only(
            bottom: 0.0, top: 2.0, left: 10.0, right: 5.0),
        width: 100,
        height: 130,
        padding: EdgeInsets.only(top: 4.0, left: 4.0, right: 4.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          color: box_color,
        ),
        child: Container(
          child: Center(child: Text("+",
            style: TextStyle(
              fontSize: 30, 
              color: Colors.white 
            ),
          ),
          )
        ),
      ),
    );
  }
}
