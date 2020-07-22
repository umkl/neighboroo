import 'package:flutter/material.dart';
import 'package:neighboroo/constants.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NbFirstNeighborooMapScreen extends StatefulWidget {
  @override
  _NbFirstNeighborooMapScreenState createState() => _NbFirstNeighborooMapScreenState();
}

class _NbFirstNeighborooMapScreenState extends State<NbFirstNeighborooMapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(initialCameraPosition: CameraPosition(

      ))
    );
  }
}