import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:neighboroo/components/main-screen-components/feed.dart';
import 'package:neighboroo/components/main-screen-components/village.dart';
import 'package:neighboroo/components/nav.dart';
import 'package:neighboroo/constants.dart';



class NbMainScreen extends StatefulWidget {
  static Feed feed = Feed();
  Color colortheme = bg;
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<NbMainScreen> {
   
   ScrollController _controller;
   final itemSize = 100.0;
   @override
   Widget build(BuildContext context) {
      return
        Column(
         children: <Widget>[        
         Container(
           color: bg,
            height: 140.0,
            child: ListView(
               shrinkWrap: true,
               scrollDirection: Axis.horizontal,
               controller: _controller,
               padding: EdgeInsets.all(1.0),
               children: <Widget>[
                  VillageMain(imagePath: 'assets/images/nb-village.jpg'),
                  VillageMain(imagePath: 'assets/images/nb-village.jpg'),
                  VillageMain(imagePath: 'assets/images/nb-village.jpg'),
                  VillageMain(imagePath: 'assets/images/nb-village.jpg'),
                  VillageMain(imagePath: 'assets/images/nb-village.jpg'),
                  AddVillage(),
                  Container(
                     width: 50.0,
                     height: 10.0,
                     color: Colors.transparent,
                  )
               ]),
         ),
         NbMainScreen.feed
         ],
      );
   }

  @override
  void initState() {
   _controller = ScrollController();
   super.initState();
   WidgetsBinding.instance.addPostFrameCallback(
      (_) => {_controller.jumpTo(_controller.position.maxScrollExtent)});
  }
}


// class NbMainScreenBody extends StatelessWidget {
//   ScrollController sc;
//   NbMainScreenBody(this.sc);

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: <Widget>[
//         Container(),
//         Container(
//           height: 140.0,
//           child: ListView(
//               shrinkWrap: true,
//               scrollDirection: Axis.horizontal,
//               controller: sc,
//               padding: EdgeInsets.all(1.0),
//               children: <Widget>[
//                 Village(imagePath: 'assets/images/nb-village.jpg'),
//                 Village(imagePath: 'assets/images/nb-village.jpg'),
//                 Village(imagePath: 'assets/images/nb-village.jpg'),
//                 Village(imagePath: 'assets/images/nb-village.jpg'),
//                 Village(imagePath: 'assets/images/nb-village.jpg'),
//                 AddVillage(),
//                 Container(
//                   width: 50.0,
//                   height: 10.0,
//                   color: Colors.transparent,
//                 )
//               ]),
//         ),
//         Feed()
//       ],
//     );
//   }
// }












//  _moveUp() {
//     _controller.jumpTo(_controller.position.maxScrollExtent);
//   }

//   _moveDown() {
//     _controller.animateTo(_controller.offset + itemSize,
//         duration: Duration(milliseconds: 1), curve: Curves.linear);
//   }

//   _scrollListener() {
//     if (_controller.offset >= _controller.position.maxScrollExtent &&
//         !_controller.position.outOfRange) {
//       setState(() {
//         message = "reach the bottom";
//       });
//     }
//     if (_controller.offset <= _controller.position.minScrollExtent &&
//         !_controller.position.outOfRange) {
//       setState(() {
//         message = "reach the top";
//       });
//     }
//   }
// class MainScreen2 extends StatelessWidget {
//    @override
//    Widget build(BuildContext context) {
//       return Container(
//          height: 200.0,
//          child: ListView(
//           // controller: _controller,
//          scrollDirection: Axis.horizontal,
//          children: <Widget>[
//             Container(
//               width: 160.0,
//               color: Colors.red,
//             ),
//             Container(
//               width: 160.0,
//               color: Colors.blue,
//             ),
//             Container(
//               width: 160.0,
//               color: Colors.green,
//             ),
//             Container(
//               width: 160.0,
//               color: Colors.yellow,
//             ),
//             Container(
//               width: 160.0,
//               color: Colors.orange,
//             ),
//             Container(
//               width: 160.0,
//               color: Colors.transparent,
//             ),
//          ],
//          )
//       );
//    }
// }
