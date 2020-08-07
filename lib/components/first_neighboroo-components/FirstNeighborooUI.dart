import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neighboroo/components/first_neighboroo-components/FirstNeighborooSearch.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/AssetElement.dart';
import 'package:neighboroo/screens/Identify/profile-screen.dart';
import 'package:flutter/material.dart';
import 'package:neighboroo/screens/Identify/first_neighboroo-screen.dart';

class NbFirstNeighborooScreenUI extends StatefulWidget {
  @override
  _NbFirstNeighborooScreenUIState createState() =>
      _NbFirstNeighborooScreenUIState();
}

class _NbFirstNeighborooScreenUIState extends State<NbFirstNeighborooScreenUI> {
  bool autologin;
  double boxmax;
  NbFirstNeighborooScreen n = new NbFirstNeighborooScreen();

  @override
  void initState() {
    autologin = false;
    super.initState();
  }

  void searchFunction() {}

  @override
  Widget build(BuildContext context) {
    TextEditingController descriptionTextEditingController =
        TextEditingController();
    boxmax = MediaQuery.of(context).size.width * 0.7;
    return Stack(
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
                        right: 150,
                        top: 17,
                        child: Opacity(
                          opacity: 0.6,
                          child: RotationTransition(
                            turns: new AlwaysStoppedAnimation(3 / 360),
                            child: SvgPicture.asset(
                              'assets/icons/svg/house3.svg',
                              height: 100,
                              width: 100,
                              color: red,
                            ),
                          ),
                        ),
                      ),
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
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    NbFirstNeighborooSearch()))
                      },
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
                      Align(
                        alignment: Alignment.centerLeft,
                        child: ConstrainedBox(
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
                              )),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(7.0)),
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
                          padding: EdgeInsets.only(
                              top: 0, left: 10, right: 10, bottom: 10),
                          height: 130.0,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: box_color,
                            borderRadius:
                                BorderRadius.all(Radius.circular(7.0)),
                          ),
                          child: TextField(
                            // onTap: () => Scrollable.ensureVisible(dataKey.currentContext),
                            scrollPhysics: NeverScrollableScrollPhysics(),
                            keyboardType: TextInputType.multiline,
                            maxLines: 4,
                            maxLength: 200,
                            decoration: InputDecoration(
                              counterStyle: TextStyle(color: text_color),
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
                                    builder: (context) => Text("fasdf")));
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
    );
  }
}
