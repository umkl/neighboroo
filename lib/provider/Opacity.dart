import 'package:flutter/material.dart';

class Opacity extends ChangeNotifier{
  var _opacity = 0.0;
  double get getOpacity{
    return _opacity;
  }

  void setOpacity(){
    _opacity = 1.0;
    notifyListeners();
  }
}