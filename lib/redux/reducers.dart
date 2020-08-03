import 'package:neighboroo/models/GoogleMap.dart';
import 'package:neighboroo/redux/actions.dart';

NbGoogleMap reducer(NbGoogleMap prevState, dynamic action ){
  NbGoogleMap newState = NbGoogleMap.fromNbGoogleMap(prevState);

  if(action is Markers){
    newState.markers = action.payload;
  }
  return newState;
}