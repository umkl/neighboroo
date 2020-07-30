import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class NbGoogleMapMarker extends ChangeNotifier{
  String _name;
  List<Marker> _markers = [];
  int _radius;

  set markers(List<Marker> m){
    _markers = m;
    notifyListeners();
  }
  List<Marker> get markers => _markers;
  String get name => _name;

  NbGoogleMapMarker(){
    _markers.add(Marker(position: LatLng(0.0, 0.0), markerId: MarkerId(Random().nextInt(100).toString())));
    _markers.add(Marker(position: LatLng(20.0, 0.0), markerId: MarkerId(Random().nextInt(100).toString())));
  }

  void addMarker(Marker m){
    _markers.add(m);
    notifyListeners();
  }
}
