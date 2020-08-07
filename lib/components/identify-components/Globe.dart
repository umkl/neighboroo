// static _StartupPageState of(BuildContext context) => context.ancestorStateOfType(const TypeMatcher<_StartupPageState>());


import 'dart:math';

import 'package:flutter/material.dart';
import 'package:neighboroo/constants.dart';

// class Nbanimatedbackgroundglobe extends StatefulWidget {
//   @override
//   _NbanimatedbackgroundglobeState createState() => _NbanimatedbackgroundglobeState();
// }

// class _NbanimatedbackgroundglobeState extends State<Nbanimatedbackgroundglobe> {
  
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: MediaQuery.of(context).size.height,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.transparent,
//       ),
//       child: ClipRect(
//         clipBehavior: Clip.hardEdge,
//         child: OverflowBox(
//           maxHeight: MediaQuery.of(context).size.height * 1.4,
//           maxWidth: MediaQuery.of(context).size.width * 1.7,
//           child: Center(
//             child: Container(
//               margin: EdgeInsets.only(
//                   top: MediaQuery.of(context).size.height * 0.10),
//               decoration: BoxDecoration(
//                 color: globe,
//                 shape: BoxShape.circle,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );

//   }
// }

class AnimationTest extends StatefulWidget {
  @override
  _AnimationTestState createState() => _AnimationTestState();
}

class _AnimationTestState extends State<AnimationTest> with SingleTickerProviderStateMixin{
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 1),
    );
    _controller.forward();
    super.initState();
  }

  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      child: AnimatedBuilder(
        child: Text("data"),
        animation: _controller.view,
        builder: (context,child){
          return Transform.rotate(
            angle: _controller.value * 2 * pi,
            child: child
            );
        }
      ),
    );
  }
}