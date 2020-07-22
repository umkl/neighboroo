import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/AssetElement.dart';
import 'package:neighboroo/screens/Identify/first_neighboroo-screen.dart';
import 'package:neighboroo/screens/Identify/profile-screen.dart';

class NbProfileScreen extends StatefulWidget {
  @override
  _NbProfileScreenState createState() => _NbProfileScreenState();
}

class _NbProfileScreenState extends State<NbProfileScreen> {
  bool autologin;
  double boxmax;
  Nbbackgroundglobe nbbg = new Nbbackgroundglobe();

  @override
  void initState() {
    autologin = false;
    super.initState();
  }

@override
  Widget build(BuildContext context) {
    TextEditingController descriptionTextEditingController = TextEditingController();
    boxmax = MediaQuery.of(context).size.width * 0.7;

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Nbbackgroundglobe(),
          Container(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 20,
                          bottom: 25,
                          child: Opacity(
                            opacity: 0.6,
                            child: RotationTransition(
                              turns: new AlwaysStoppedAnimation(-20 / 360),
                              child: SvgPicture.asset(
                                'assets/icons/svg/house2.svg',
                                color: blue,
                                height: 130,
                                width: 100,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 30.0, top: 0),
                    child: Text("Profile",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: text_color,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40.0, top: 0),
                    child: Text("Let other users know who you are",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: hint_text_color,
                        )
                        ),
                  ),
                  
                  ConstrainedBox(
                    constraints: BoxConstraints(
                        maxWidth: boxmax, maxHeight: boxmax - 60),
                    child: Container(
                        margin: EdgeInsets.only(
                          top: 13,
                          left: 30,
                          right: 30,
                        ),
                        padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                        height: boxmax,
                        width: boxmax,
                        decoration: BoxDecoration(
                          color: box_color,
                          borderRadius: BorderRadius.all(Radius.circular(7.0)),
                        ),
                        child: InkWell(
                          onTap: () => print("fasdf"),
                          splashColor: blue,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(7.0)),
                            child: Center(
                              child: Text(
                                "+",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: hint_text_color,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                          ),
                        )),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                        top: 13,
                        left: 30,
                        right: 30,
                      ),
                      padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                      height: 50.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: box_color,
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "username",
                          hintStyle: TextStyle(
                              fontSize: 20,
                              color: hint_text_color,
                              fontWeight: FontWeight.w400),
                        ),
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: text_color,
                        ),
                        keyboardAppearance: Brightness.dark,
                      )),
                  Container(
                      margin: EdgeInsets.only(
                        top: 13,
                        left: 30,
                        right: 30,
                      ),
                      padding: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
                      height: 130.0,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: box_color,
                        borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      ),
                      child: TextField(
                        scrollPhysics: NeverScrollableScrollPhysics(),
                        keyboardType: TextInputType.multiline,
                        maxLines: 4,
                        maxLength: 200,
                        decoration: InputDecoration(
                          counterStyle: TextStyle(
                            color: text_color  
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "describe yourself",
                          hintStyle: TextStyle(
                              fontSize: 20,
                              color: hint_text_color,
                              fontWeight: FontWeight.w400),
                        ),
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: text_color,
                        ),
                        keyboardAppearance: Brightness.dark,
                      )),

                  Container(
                    color: Colors.transparent,
                    margin: EdgeInsets.symmetric(vertical: 30, horizontal: 30),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          // NbSwitch(),
                          InkWell(
                            onTap: () => Navigator.pop(context),
                            child: Container(
                                height: 30.0,
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                decoration: BoxDecoration(
                                  color: box_color,
                                  borderRadius: BorderRadius.circular(7.0),
                                ),
                                child: Center(
                                  child: Text(
                                    "back",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: text_color,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => NbFirstNeighborooScreen()));
                            },
                            child: Container(
                              height: 30,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  color: blue,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(7))),
                              child: Center(
                                child: Text(
                                  "next",
                                  style: TextStyle(
                                    color: text_color,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ]),
                  ),
                  Opacity(
                    opacity: 1,
                    child: Container(
                      margin: EdgeInsets.only(top: 10),
                      width: MediaQuery.of(context).size.width,
                      child: Text(
                        "Living together made easy and fun",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white60, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// class Nbbackgroundglobe extends StatefulWidget {
//   @override
//   _NbbackgroundglobeState createState() => _NbbackgroundglobeState();
// }

// class _NbbackgroundglobeState extends State<Nbbackgroundglobe> {
//   double _width;
//   double _height;
//   double _top;

//   @override
//   void initState() {
//     super.initState();
//   }

//   void updateState(){
//     setState(() {
//     _width = MediaQuery.of(context).size.height * 1.6;
//     _height = MediaQuery.of(context).size.width * 1.9;
//     _top = MediaQuery.of(context).size.height * 0.01;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     _width = MediaQuery.of(context).size.height * 1.3;
//     _height = MediaQuery.of(context).size.width * 1.7;
//     _top = MediaQuery.of(context).size.height * 0.10;

//     return Container(
//       height: MediaQuery.of(context).size.height,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(10),
//         color: Colors.transparent,
//       ),
//       child: AnimatedContainer(
//           duration: Duration(milliseconds: 10),
//           child: ClipRect(
//           clipBehavior: Clip.hardEdge,
//           child: OverflowBox(
//             maxHeight: _width,
//             maxWidth: _height,
//             child: Center(
//               child: Container(
//                 margin: EdgeInsets.only(
//                     top: _top),
//                 decoration: BoxDecoration(
//                   color: globe,
//                   shape: BoxShape.circle,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
class Nbbackgroundglobe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.transparent,
      ),
      child: ClipRect(
        clipBehavior: Clip.hardEdge,
        child: OverflowBox(
          maxHeight: MediaQuery.of(context).size.height * 1.4,
          maxWidth: MediaQuery.of(context).size.width * 1.7,
          child: Center(
            child: Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.10),
              decoration: BoxDecoration(
                color: globe,
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );

  }
}
