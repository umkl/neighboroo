import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neighboroo/components/first_neighboroo-screen-components/FirstNeighborooMap.dart';
import 'package:neighboroo/components/general-category-components/village.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/dynamic.dart';

class NbFirstNeighborooSearch extends StatefulWidget {
  @override
  _NbFirstNeighborooSearchState createState() =>
      _NbFirstNeighborooSearchState();
}

class _NbFirstNeighborooSearchState extends State<NbFirstNeighborooSearch> {
  
  PageController controller = PageController();
  var currentPageValue = 0.0;

  @override
  Widget build(BuildContext context) {
    controller.addListener(() {
      setState(() {
        currentPageValue = controller.page;
      });
    });

    return Scaffold(
        body: PageView.builder(
      controller: controller,
      itemBuilder: (context, position) {
        if (position == currentPageValue.floor()) {
          return Transform(
            transform: Matrix4.identity()
              ..rotateX(currentPageValue - position),
            child: Container(
              color: position % 2 == 0 ? Colors.blue : Colors.pink,
              child: Center(
                child: Text(
                  "Page",
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
              ),
            ),
          );
        } else if (position == currentPageValue.floor() + 1) {
          return Transform(
            transform: Matrix4.identity()..rotateX(currentPageValue - position),
            child: Container(
              color: position % 2 == 0 ? Colors.blue : Colors.pink,
              child: Center(
                child: Text(
                  "Page",
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
              ),
            ),
          );
        } else {
          return Container(
            color: position % 2 == 0 ? Colors.blue : Colors.pink,
            child: Center(
              child: Text(
                "Page",
                style: TextStyle(color: Colors.white, fontSize: 22.0),
              ),
            ),
          );
        }
      },
      itemCount: 10,
    ));
  }
}

// @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: Stack(
//           children: <Widget>[
//             Container(color: globe),
//             SafeArea(
//               child: Container(
//                   margin: EdgeInsets.only(top: 20, left: 30, right: 30),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: <Widget>[
//                       Container(
//                         margin: EdgeInsets.only(left: 10.0, top: 4, bottom: 0),
//                         child: Text("Search Neighboroos",
//                             style: TextStyle(
//                               fontSize: 25,
//                               fontWeight: FontWeight.w700,
//                               color: text_color,
//                             )),
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(top: 5, bottom: 10, left: 20),
//                         child: Text(
//                           "Find your Neighboroo...",
//                           style: TextStyle(
//                             color: hint_text_color,
//                           ),
//                         ),
//                       ),
//                       Container(
//                           padding: EdgeInsets.only(top: 0, left: 10, right: 10),
//                           height: 50.0,
//                           width: MediaQuery.of(context).size.width,
//                           decoration: BoxDecoration(
//                             color: box_color,
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(7.0)),
//                           ),
//                           child: TextField(
//                             decoration: InputDecoration(
//                               icon: Opacity(
//                                 opacity: 0.5,
//                                 child: SvgPicture.asset(
//                                   "assets/icons/spec.svg",
//                                   width: 22.0,
//                                   height: 22.0,
//                                 ),
//                               ),
//                               enabledBorder: InputBorder.none,
//                               focusedBorder: InputBorder.none,
//                               hintText: "search existing Neighboroos",
//                               hintStyle: TextStyle(
//                                   fontSize: 20,
//                                   color: hint_text_color,
//                                   fontWeight: FontWeight.w400),
//                             ),
//                             style: TextStyle(
//                               fontWeight: FontWeight.w400,
//                               color: text_color,
//                             ),
//                             keyboardAppearance: Brightness.dark,
//                           )),
//                       Opacity(
//                         opacity: 0.8,
//                         child: Container(
//                           margin: EdgeInsets.only(top: 15),
//                           padding: EdgeInsets.only(top: 0, left: 10, right: 10),
//                           height: 50.0,
//                           width: MediaQuery.of(context).size.width,
//                           decoration: BoxDecoration(
//                             color: red,
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(7.0)),
//                           ),
//                           child: Center(
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: <Widget>[
//                                 Opacity(
//                                   opacity: 1,
//                                   child: SvgPicture.asset(
//                                     "assets/icons/spec.svg",
//                                     width: 22.0,
//                                     height: 22.0,
//                                   ),
//                                 ),
//                                 InkWell(
//                                   onTap: ()=>
//                                     Navigator.push(
//                                       context,
//                                       MaterialPageRoute(
//                                         builder: (context) => NbFirstNeighborooMapScreen())),
//                                   child: Opacity(
//                                     opacity: 1,
//                                     child: Container(
//                                       margin: EdgeInsets.only(left: 20),
//                                       child: Text("add location",
//                                           style: TextStyle(
//                                             color: text_color,
//                                             fontSize: 20,
//                                           )),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         child: Column(
//                           children: m.markers.map((item)=>Text(item.markerId.toString())).toList()
//                         )
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(left: 20, top: 10, bottom: 0),
//                         child: Text(
//                           "search Results:",
//                           style: TextStyle(
//                             color: hint_text_color,
//                           ),
//                         ),
//                       ),
//                       Container(
//                         margin: EdgeInsets.only(top: 20),
//                         height: 300.0,
//                         child: ListView(
//                           children: <Widget>[
//                             NbVillage(),
//                             NbVillage(),
//                             NbVillage(),
//                             NbVillage(),
//                             NbVillage(),
//                             NbVillage(),
//                             NbVillage(),
//                             NbVillage(),
//                           ],
//                         ),
//                       )
//                     ],
//                   )),
//             )
//           ],
//         ));
//   }
