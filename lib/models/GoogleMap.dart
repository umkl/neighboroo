import 'package:google_maps_flutter/google_maps_flutter.dart';

class NbGoogleMap{
  List<Marker> markers;
  int range;

  NbGoogleMap({this.markers, this.range = 30});

  NbGoogleMap.fromNbGoogleMap(NbGoogleMap ngm){
    markers = ngm.markers;
  }

  List<Marker> get getMarkers => markers;
}