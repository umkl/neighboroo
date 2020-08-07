import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neighboroo/components/first_neighboroo-components/FirstNeighborooUI.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/AssetElement.dart';
import 'package:neighboroo/screens/Identify/profile-screen.dart';

class NbFirstNeighborooScreen extends StatefulWidget {
  NbFirstNeighborooScreenState state;

  @override
  NbFirstNeighborooScreenState createState() {
    this.state = new NbFirstNeighborooScreenState();
    return this.state;
  }
}

class NbFirstNeighborooScreenState extends State<NbFirstNeighborooScreen> {
  double _opacity = 0.0;
  startSearchMode() {
    setState(() {
      _opacity = 1.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: <Widget>[
        NbFirstNeighborooScreenUI(),
        ],
      )
    );
  }
}

        // AnimatedContainer(
        //   duration: Duration(milliseconds: 200),
        //   child: Opacity(
        //     opacity: _opacity,
        //     child: Container(
        //       height: MediaQuery.of(context).size.height,
        //       width: MediaQuery.of(context).size.width,
        //       color: green
        //       ),
        //     ),
        //   )


