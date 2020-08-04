import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:neighboroo/Identify.dart';
import 'package:neighboroo/Neighboroo.dart';
import 'package:neighboroo/components/first_neighboroo-screen-components/FirstNeighborooMap.dart';
import 'package:neighboroo/components/first_neighboroo-screen-components/FirstNeighborooSearch.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/GoogleMap.dart';
import 'package:neighboroo/provider/GoogleMapMarker.dart';
import 'package:neighboroo/redux/reducers.dart';
import 'package:neighboroo/screens/Neighboroo/main-screen.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:redux/redux.dart';

//this is for IDENTIFY
void main(){
  final _initialState = NbGoogleMap(markers:[]);
  final Store<NbGoogleMap> _store = Store<NbGoogleMap>(reducer,initialState: _initialState);
  runApp(NeighborooRuns(store: _store));
}
class NeighborooRuns extends StatelessWidget {
  final Store<NbGoogleMap> store;

  NeighborooRuns({this.store});
  @override
  Widget build(BuildContext context) {
    return StoreProvider<NbGoogleMap>(
      store: store,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Identify()
      ),
    );
  }
}

  //this is for NEIGHOROO
  // @override
  // Widget build(BuildContext context) {//build function
  //   return MaterialApp(
  //     title: "Neighboroo",
  //     theme: ThemeData(
  //       textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),// we set poppins as our default font
  //       primaryColor: text_color,
  //       accentColor: text_color,
  //       visualDensity: VisualDensity.adaptivePlatformDensity,
  //     ),
  //     home: Neighboroo(),
  //   );
  // }

//this is for test

// import 'package:flutter/material.dart';
// import 'package:neighboroo/test/testScaffold.dart';

// void main()=>{runApp(RUN())};
// class RUN extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: TestScaffold()
//     );
//   }
// }