import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neighboroo/constants.dart';

class HeadBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              margin: new EdgeInsets.only(right: 10.0),
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
                vertical: 0.0,
              ),
              width: MediaQuery.of(context).size.width * 0.753,              
              
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                color: box_color,
              ),
              child: TextField(                     
                
                style: TextStyle(
                  color: Colors.white,
                ),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 0.0),
                    icon: SvgPicture.asset("assets/icons/spec.svg",
                    width: 22.0,
                    height: 22.0,
                  ),
                  focusColor: Colors.blue,
                  fillColor: Colors.black,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  
                  hintText: "search",
                  hintStyle: TextStyle(                    
                    color: Colors.white,
                    
                  ),

                ),
              ),
            ),
          ],
        ),
        Container(
          margin:
              new EdgeInsets.only(bottom: 0.0, top: 0.0, left: 0.0, right: 0.0),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(7)),
            child: Image(
              image: AssetImage('assets/images/nb-profilepic.png'),
              width: 50.0,
              height: 50.0,
            ),
          ),
        ),
      ]),
    );
  }
}
