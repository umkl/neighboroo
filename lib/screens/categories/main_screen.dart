import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neighboroo/components/feed.dart';
import 'package:neighboroo/components/nav.dart';
import 'package:neighboroo/components/village.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/components/head.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return Container(
      
      height: 200.0,
      
      child: ListView(
        
        // controller: _controller,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 160.0,
            color: Colors.red,
          ),
          Container(
            width: 160.0,
            color: Colors.blue,
          ),
          Container(
            width: 160.0,
            color: Colors.green,
          ),
          Container(
            width: 160.0,
            color: Colors.yellow,
          ),
          Container(
            width: 160.0,
            color: Colors.orange,
          ),
          Container(
            width: 160.0,
            color: Colors.transparent,
          ),
        ],
      )
      );
  }
}

// return Column(
    //   children: <Widget>[
    //     // ListView(
    //     //   scrollDirection: Axis.horizontal,
          
    //     //   children: <Widget> [
    //     //     Village(imagePath: 'assets/images/nb-village.jpg'),
    //     //     Village(imagePath: 'assets/images/nb-village.jpg'),
    //     //     Village(imagePath: 'assets/images/nb-village.jpg'),
    //     //     Village(imagePath: 'assets/images/nb-village.jpg'),
    //     //     Village(imagePath: 'assets/images/nb-village.jpg'),
    //     //     AddVillage(),
    //     //   ]
    //     // ),
        
    //     Feed(),        

    //   ],
    // );

    // final _controller = ScrollController();
    //  _controller.jumpTo(_controller.position.maxScrollExtent);