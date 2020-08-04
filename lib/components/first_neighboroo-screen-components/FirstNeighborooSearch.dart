import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:neighboroo/components/first_neighboroo-screen-components/FirstNeighborooMap.dart';
import 'package:neighboroo/components/general-category-components/village.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/dynamic.dart';
import 'package:neighboroo/models/GoogleMap.dart';
import 'package:neighboroo/models/Village.dart';

double screenheight;

int NbGoogleMapLocationCounter = 0;

class NbFirstNeighborooSearch extends StatefulWidget {
  @override
  _NbFirstNeighborooSearchState createState() =>
      _NbFirstNeighborooSearchState();
}

class _NbFirstNeighborooSearchState extends State<NbFirstNeighborooSearch> {
  // PageController controller = PageController();
  // var currentPageValue = 0.0;
  

  @override
  Widget build(BuildContext context) {
    screenheight = MediaQuery.of(context).size.height * 0.6;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: <Widget>[
            Container(color: globe),
            SafeArea(
              child: Container(
                  margin: EdgeInsets.only(top: 20, left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(left: 10.0, top: 4, bottom: 0),
                        child: Text("Search Neighboroos",
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: text_color,
                            )),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 10, left: 20),
                        child: Text(
                          "Find your Neighboroo...",
                          style: TextStyle(
                            color: hint_text_color,
                          ),
                        ),
                      ),
                      Container(
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
                      Opacity(
                        opacity: 0.8,
                        child: Container(
                          margin: EdgeInsets.only(top: 15),
                          padding: EdgeInsets.only(top: 0, left: 10, right: 10),
                          height: 50.0,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: red,
                            borderRadius:
                                BorderRadius.all(Radius.circular(7.0)),
                          ),
                          child: Center(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                // Opacity(
                                //   opacity: 1,
                                //   child: Image(
                                //     image: AssetImage("assets/images/nb-google-map-icon.png"),
                                //   ),
                                // ),
                                InkWell(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              NbFirstNeighborooMapScreen())),
                                  child: Opacity(
                                    opacity: 0.83,
                                    child: Row(
                                      children: <Widget>[
                                        Icon(Icons.map,color:Colors.white),
                                        Container(
                                          margin: EdgeInsets.only(left: 20),
                                          child: Text("add location",
                                            style: TextStyle(
                                              color: text_color,
                                              fontSize: 20,
                                            )
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Column(
                      //   children: <Widget>[
                      //     NbLocationElement(counter: 1, range: 22),
                      //     NbLocationElement(counter: 2, range: 22),
                      //     NbLocationElement(counter: 3, range: 22),
                      //     NbLocationElement(counter: 4, range: 22),
                      //   ],
                      // ),
                      getGoogleMapLocations(),
                      Container(
                        margin: EdgeInsets.only(left: 20, top: 10, bottom: 0),
                        child: Text(
                          "search Results:",
                          style: TextStyle(
                            color: hint_text_color,
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        height: MediaQuery.of(context).size.height* 0.4,
                        child: ListView(
                          children: <Widget>[
                            NbVillage(Village("Pfaffenhofen","Ldafkjalskdfjkasjfkasjfjafjaksjfdlasjfdkljadlkfjaslkfjaslkjdfkladsjfklajskfljaskldfjaklsjdfkljalfd",picture: "assets/images/nb-village.jpg")),
                            NbVillage(Village("Pfaffenhofen","Ldafkjalskdfjkasjfkasjfjafjaksjfdlasjfdkljadlkfjaslkfjaslkjdfkladsjfklajskfljaskldfjaklsjdfkljalfd",picture: "assets/images/nb-village.jpg")),
                            NbVillage(Village("Pfaffenhofen","Ldafkjalskdfjkasjfkasjfjafjaksjfdlasjfdkljadlkfjaslkfjaslkjdfkladsjfklajskfljaskldfjaklsjdfkljalfd",picture: "assets/images/nb-village.jpg")),
                            NbVillage(Village("Pfaffenhofen","Ldafkjalskdfjkasjfkasjfjafjaksjfdlasjfdkljadlkfjaslkfjaslkjdfkladsjfklajskfljaskldfjaklsjdfkljalfd",picture: "assets/images/nb-village.jpg")),
                          ],
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ));
  }

  Widget getGoogleMapLocations(){
    List<Widget> list = new List<Widget>();
    print("adfasd");
    print(getReduxValue());
    
    return StoreConnector<NbGoogleMap, NbGoogleMap>(
      converter: (store) => store.state,
      builder: (context, state) {
        // state.markers == null ? print("keine Markers vorhanden!") : print("marker sind vorhanden");
        for(int i = 1; i < state.markers.length+ 1; i++){
          screenheight -= 0.1;
          list.add(
            NbLocationElement(counter: i, range: state.range),
          );
          // print(state.getMarkers);
        }
        return Column(
          children: list
        );
      }
    );
    
  }

  Widget getReduxValue(){
    String value = "kk";
    return StoreConnector<NbGoogleMap, NbGoogleMap>(
      converter: (store) => store.state,
      builder: (context, state) {
        (state.getMarkers == null) ? value = "keine Markers vorhanden!" : value = "marker sind vorhanden";
        // print(state.markers);
        // for(int i = 0; i < state.markers.length; i++){          
        //   list.add(
        //     NbLocationElement(counter: i, range: state.range),
        //   );
        //   // print(state.getMarkers);
        return Text(state.markers.toString());
      }
    );
    // return value;
  }
}

class NbLocationElement extends StatelessWidget {
  int range;
  String name;
  int counter;

  NbLocationElement({@required this.counter, this.name, @required this.range});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.all(2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: box_color,
            radius: 20,
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(Icons.delete_forever),
              color: Colors.white,
              onPressed: () {},
            ),
          ),
          Expanded(
            child: Container(
                padding: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: box_color,
                  borderRadius: BorderRadius.circular(7.0),
                ),
                child: StoreConnector<NbGoogleMap, NbGoogleMap>(
                  converter: (store) => store.state,
                  builder: (context, state) {
                    return RichText(
                      text: TextSpan(
                          text: "Location  ${counter}",
                          style: TextStyle(
                            color: text_color,
                            fontSize: 15,
                          )),
                    );
                  },
                )),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7, vertical: 10),
            decoration: BoxDecoration(
                color: box_color, borderRadius: BorderRadius.circular(7.0)),
            child: Text(
              "${range}",
              style: TextStyle(
                color: text_color,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// @override
// Widget build(BuildContext context) {
//   controller.addListener(() {
//     setState(() {
//       currentPageValue = controller.page;
//     });
//   });

//   return Scaffold(
//       body: PageView.builder(
//     controller: controller,
//     itemBuilder: (context, position) {
//       if (position == currentPageValue.floor()) {
//         return Transform(
//           transform: Matrix4.identity()
//             ..rotateX(currentPageValue - position),
//           child: Container(
//             color: position % 2 == 0 ? Colors.blue : Colors.pink,
//             child: Center(
//               child: Text(
//                 "Page",
//                 style: TextStyle(color: Colors.white, fontSize: 22.0),
//               ),
//             ),
//           ),
//         );
//       } else if (position == currentPageValue.floor() + 1) {
//         return Transform(
//           transform: Matrix4.identity()..rotateX(currentPageValue - position),
//           child: Container(
//             color: position % 2 == 0 ? Colors.blue : Colors.pink,
//             child: Center(
//               child: Text(
//                 "Page",
//                 style: TextStyle(color: Colors.white, fontSize: 22.0),
//               ),
//             ),
//           ),
//         );
//       } else {
//         return Container(
//           color: position % 2 == 0 ? Colors.blue : Colors.pink,
//           child: Center(
//             child: Text(
//               "Page",
//               style: TextStyle(color: Colors.white, fontSize: 22.0),
//             ),
//           ),
//         );
//       }
//     },
//     itemCount: 10,
//   ));
// }
