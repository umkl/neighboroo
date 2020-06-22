import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neighboroo/components/feed.dart';
import 'package:neighboroo/components/village.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/components/head.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg_main,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: HeadBar(),
        ),
        bottomNavigationBar: BottomAppBar(
          child: Text("data"),
        ),
        body: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget> [
                Village(imagePath: 'assets/images/nb-village.jpg'),
                Village(imagePath: 'assets/images/nb-village.jpg'),
            ]
            ),
            Column(
              children: <Widget>[
                Feed()
              ]
            )
          ],
        ) 
        );
  }
}

// Form(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: <Widget>[
//               TextFormField(
//                 decoration: const InputDecoration(
//                   hintText: 'Enter your email',
//                 ),
//                 validator: (value) {
//                   if (value.isEmpty) {
//                     return 'Please enter some text';
//                   }
//                   return null;
//                 },
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 16.0),
//                 child: RaisedButton(
//                   onPressed: () {
//                     // Validate will return true if the form is valid, or false if
//                   },
//                   child: Text('Submit'),
//                 ),
//               ),
//             ],
//           ),
//         )
