import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/AssetElement.dart';
import 'package:neighboroo/screens/Identify/profile-screen.dart';

// class NbRegister extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("data"),
//       ),
//       body: Text("s"),
//     );
//   }
// }

class NbFirstNeighborooScreen extends StatefulWidget {
    Function callback;

  NbFirstNeighborooScreen(this.callback);

  @override
  _NbFirstNeighborooScreenState createState() =>
      _NbFirstNeighborooScreenState();
}

class _NbFirstNeighborooScreenState extends State<NbFirstNeighborooScreen> {
  bool autologin;
  double boxmax;

  @override
  void initState() {
    autologin = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController descriptionTextEditingController =
        TextEditingController();

    boxmax = MediaQuery.of(context).size.width * 0.7;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Nbbackgroundglobe(),
          // Container(
          //   margin: EdgeInsets.only(top: 100.0),
          //   child: ClipRRect(
          //     borderRadius: BorderRadius.all(Radius.lerp(Radius.circular(10.0), Radius.elliptical(1000, 100), 100.0)),
          //     child: Container(
          //       width: MediaQuery.of(context).size.width*2,
          //       height: 700,
          //       decoration: BoxDecoration(
          //         color: globe,
          //       ),
          //     ),
          //   ),
          // ),
          Container(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: <Widget>[
                        // Positioned(
                        //   top: 20,
                        //   right: 70,
                        //   child: Opacity(
                        //     opacity: 0.6,
                        //     child: RotationTransition(
                        //       turns: new AlwaysStoppedAnimation(10 / 360),
                        //       child: SvgPicture.asset(
                        //         'assets/icons/svg/house.svg',
                        //         color: green,
                        //         height: 100,
                        //         width: 100,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        Positioned(
                          left: 100,
                          top: 10,
                          child: Opacity(
                            opacity: 0.6,
                            child: RotationTransition(
                              turns: new AlwaysStoppedAnimation(-10 / 360),
                              child: SvgPicture.asset(
                                'assets/icons/svg/house2.svg',
                                color: red,
                                height: 110,
                                width: 100,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 130,
                          top: 10,
                          child: Opacity(
                            opacity: 0.6,
                            child: RotationTransition(
                              turns: new AlwaysStoppedAnimation(6 / 360),
                              child: SvgPicture.asset(
                                'assets/icons/svg/house3.svg',
                                height: 110,
                                width: 100,
                                color: red,
                              ),
                            ),
                          ),
                        ),
                        // Positioned(
                        //   right: 60,
                        //   bottom: 50,
                        //   child: Opacity(
                        //     opacity: 0.6,
                        //     child: RotationTransition(
                        //       turns: new AlwaysStoppedAnimation(10 / 360),
                        //       child: SvgPicture.asset(
                        //         'assets/icons/svg/house4.svg',
                        //         height: 140,
                        //         width: 100,
                        //         color: yellow,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 30.0, top: 0),
                    child: Text("first Neighboroo",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: text_color,
                        )),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 40.0, top: 0),
                    child: Text("seach existing Neighboroos...",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: hint_text_color,
                        )),
                  ),
                  // Container(
                  //   width: MediaQuery.of(context).size.width,

                  //   margin: EdgeInsets.symmetric(horizontal: 30.0),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: <Widget>[
                  //       Container(
                  //           margin: EdgeInsets.only(top: 20, left: 0, right: 0),
                  //           padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                  //           height: 50.0,
                  //           width: MediaQuery.of(context).size.width* 0.41,
                  //           decoration: BoxDecoration(
                  //             color: box_color,
                  //             borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  //           ),
                  //           child: TextField(
                  //             decoration: InputDecoration(
                  //               enabledBorder: InputBorder.none,
                  //               focusedBorder: InputBorder.none,
                  //               hintText: "firstname",
                  //               hintStyle: TextStyle(
                  //                   fontSize: 20,
                  //                   color: hint_text_color,
                  //                   fontWeight: FontWeight.w400),
                  //             ),
                  //             style: TextStyle(
                  //               fontWeight: FontWeight.w400,
                  //               color: text_color,
                  //             ),
                  //             keyboardAppearance: Brightness.dark,
                  //           )),
                  //       Container(
                  //           margin: EdgeInsets.only(top: 20, left: 0, right: 0),
                  //           padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                  //           height: 50.0,
                  //           width: MediaQuery.of(context).size.width* 0.41,
                  //           decoration: BoxDecoration(
                  //             color: box_color,
                  //             borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  //           ),
                  //           child: TextField(
                  //             decoration: InputDecoration(
                  //               enabledBorder: InputBorder.none,
                  //               focusedBorder: InputBorder.none,
                  //               hintText: "lastname",
                  //               hintStyle: TextStyle(
                  //                   fontSize: 20,
                  //                   color: hint_text_color,
                  //                   fontWeight: FontWeight.w400),
                  //             ),
                  //             style: TextStyle(
                  //               fontWeight: FontWeight.w400,
                  //               color: text_color,
                  //             ),
                  //             keyboardAppearance: Brightness.dark,
                  //           )),
                  //     ],
                  //   ),
                  // ),

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
                        onTap: ()=>{print("tapped")},
                        decoration: InputDecoration(
                          icon: Opacity(
                            opacity: 0.5,
                            child: SvgPicture.asset(
                              "assets/icons/spec.svg",
                              width: 22.0,
                              height: 22.0,
                            ),
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          hintText: "search existing Neighboroos",
                          hintStyle: TextStyle(
                              fontSize: 20,
                              color: hint_text_color,
                              fontWeight: FontWeight.w400
                            ),
                        ),
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: text_color,
                        ),
                        keyboardAppearance: Brightness.dark,
                      )),
                  // Container(
                  //     margin: EdgeInsets.only(
                  //       top: 13,
                  //       left: 30,
                  //       right: 30,
                  //     ),
                  //     padding: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
                  //     height: 130.0,
                  //     width: MediaQuery.of(context).size.width,
                  //     decoration: BoxDecoration(
                  //       color: box_color,
                  //       borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  //     ),
                  //     child: TextField(
                  //       scrollPhysics: NeverScrollableScrollPhysics(),
                  //       keyboardType: TextInputType.multiline,
                  //       maxLines: 4,
                  //       maxLength: 200,
                  //       decoration: InputDecoration(
                  //         counterStyle: TextStyle(
                  //           color: text_color
                  //         ),
                  //         enabledBorder: InputBorder.none,
                  //         focusedBorder: InputBorder.none,
                  //         hintText: "describe yourself",
                  //         hintStyle: TextStyle(
                  //             fontSize: 20,
                  //             color: hint_text_color,
                  //             fontWeight: FontWeight.w400),
                  //       ),
                  //       style: TextStyle(
                  //         fontWeight: FontWeight.w400,
                  //         color: text_color,
                  //       ),
                  //       keyboardAppearance: Brightness.dark,
                  //     )),

                  // Container(
                  //   margin: EdgeInsets.only(top: 13, left: 30, right: 30),
                  //   padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                  //   height: 50.0,
                  //   width: MediaQuery.of(context).size.width,
                  //   decoration: BoxDecoration(
                  //     color: box_color,
                  //     borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  //   ),
                  //   child: TextField(
                  //     decoration: InputDecoration(
                  //       enabledBorder: InputBorder.none,
                  //       focusedBorder: InputBorder.none,
                  //       hintText: "password",
                  //       hintStyle: TextStyle(
                  //           fontSize: 20,
                  //           color: hint_text_color,
                  //           fontWeight: FontWeight.w400),
                  //     ),
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.w400,
                  //       color: text_color,
                  //     ),
                  //     keyboardAppearance: Brightness.dark,
                  //   )),
                  // Container(
                  // margin: EdgeInsets.only(top: 13, left: 30, right: 30),
                  // padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                  // height: 50.0,
                  // width: MediaQuery.of(context).size.width,
                  // decoration: BoxDecoration(
                  //   color: box_color,
                  //   borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  // ),
                  // child: TextField(
                  //   decoration: InputDecoration(
                  //     enabledBorder: InputBorder.none,
                  //     focusedBorder: InputBorder.none,
                  //     hintText: "repeat password",
                  //     hintStyle: TextStyle(
                  //         fontSize: 20,
                  //         color: hint_text_color,
                  //         fontWeight: FontWeight.w400),
                  //   ),
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.w400,
                  //     color: text_color,
                  //   ),
                  //   keyboardAppearance: Brightness.dark,
                  // )),
                  // Container(
                  //     margin: EdgeInsets.only(top: 30, left: 30, right: 30),
                  //     padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                  //     height: 50.0,
                  //     width: MediaQuery.of(context).size.width,
                  //     decoration: BoxDecoration(
                  //       color: red,
                  //       borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  //     ),
                  //     child: Material(
                  //       color: Colors.transparent,
                  //       child: InkWell(
                  //         splashColor: Colors.white12,
                  //         onTap: () => {print("ads")},
                  //         child: Container(
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: <Widget>[
                  //               Container(
                  //                   width:
                  //                       MediaQuery.of(context).size.width * 0.5,
                  //                   height: 50,
                  //                   padding:
                  //                       EdgeInsets.only(top: 12, bottom: 10),
                  //                   child: Text(
                  //                     "sign up with google",
                  //                     style: TextStyle(
                  //                       fontSize: 20,
                  //                       fontWeight: FontWeight.w500,
                  //                       color: text_color,
                  //                     ),
                  //                   )),
                  //               Container(
                  //                   child: Opacity(
                  //                       opacity: 1,
                  //                       child: AssetElement(
                  //                           'assets/images/nb-google-icon.png',
                  //                           size: 20)))
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     )),
                  // Container(
                  //     margin: EdgeInsets.only(top: 10, left: 30, right: 30),
                  //     padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                  //     height: 50.0,
                  //     width: MediaQuery.of(context).size.width,
                  //     decoration: BoxDecoration(
                  //       color: box_color,
                  //       borderRadius: BorderRadius.all(Radius.circular(7.0)),
                  //     ),
                  //     child: Material(
                  //       color: Colors.transparent,
                  //       child: InkWell(
                  //         splashColor: Colors.white12,
                  //         onTap: () => {
                  //           Navigator.push(context, MaterialPageRoute(builder: (context)=> NbRegister()))
                  //         },
                  //         child: Container(
                  //           child: Row(
                  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //             children: <Widget>[
                  //               Container(
                  //                   width:
                  //                       MediaQuery.of(context).size.width * 0.5,
                  //                   height: 50,
                  //                   padding:
                  //                       EdgeInsets.only(top: 12, bottom: 10),
                  //                   child: Text(
                  //                     "go back to login",
                  //                     style: TextStyle(
                  //                       fontSize: 20,
                  //                       fontWeight: FontWeight.w500,
                  //                       color: text_color,
                  //                     ),
                  //                   )),
                  //               Container(
                  //                   child: Opacity(
                  //                 opacity: 1,
                  //                 child: SvgPicture.asset(
                  //                   'assets/icons/svg/create.svg',
                  //                   color: Colors.white,
                  //                   height: 30,
                  //                   width: 30,
                  //                 ),
                  //               ))
                  //             ],
                  //           ),
                  //         ),
                  //       ),
                  //     )),

                  Container(
                    margin: EdgeInsets.only(
                      left: 40.0,
                      top: 10,
                    ),
                    child: Text("...or create one yourself",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                          color: hint_text_color,
                        )),
                  ),
                  Container(
                    height: 400,
                    width: MediaQuery.of(context).size.width,
                    child: ListView(
                      children: <Widget>[
                        ConstrainedBox(
                          constraints: BoxConstraints(
                              maxWidth: boxmax, maxHeight: boxmax - 60),
                          child: Container(
                              margin: EdgeInsets.only(
                                top: 13,
                                left: 30,
                                right: 30,
                              ),
                              padding:
                                  EdgeInsets.only(top: 0, left: 10, right: 10),
                              height: boxmax,
                              width: boxmax,
                              decoration: BoxDecoration(
                                color: box_color,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(7.0)),
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
                            )
                          ),
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
                          hintText: "name",
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


                      ],
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    margin: EdgeInsets.symmetric(vertical: 14, horizontal: 30),
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
                                      builder: (context) =>
                                          NbFirstNeighborooScreen()));
                            },
                            child: Container(
                              height: 30,
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              decoration: BoxDecoration(
                                  color: red,
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
                      margin: EdgeInsets.only(top: 0),
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
          maxHeight: MediaQuery.of(context).size.height * 1.3,
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
    // return LayoutBuilder(
    //   builder: (context, constraints) {
    //     final radius = constraints.biggest.width * 1.2;
    //     return SizedBox(
    //       width: radius,
    //       height: 100,
    //       child: FittedBox(
    //         fit: BoxFit.fitHeight,
    //         child: Container(
    //           width: radius,
    //           height: 100,
    //           decoration: BoxDecoration(
    //             shape: BoxShape.circle,
    //             color: Colors.blue,
    //           ),
    //         ),
    //       ),
    //     );
    //   }
    // );
  }
}

// class Nbbackgroundglobe extends StatelessWidget {
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
//           maxHeight: MediaQuery.of(context).size.height * 1.3,
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
//     // return LayoutBuilder(
//     //   builder: (context, constraints) {
//     //     final radius = constraints.biggest.width * 1.2;
//     //     return SizedBox(
//     //       width: radius,
//     //       height: 100,
//     //       child: FittedBox(
//     //         fit: BoxFit.fitHeight,
//     //         child: Container(
//     //           width: radius,
//     //           height: 100,
//     //           decoration: BoxDecoration(
//     //             shape: BoxShape.circle,
//     //             color: Colors.blue,
//     //           ),
//     //         ),
//     //       ),
//     //     );
//     //   }
//     // );
//   }
// }
