import 'package:flutter/material.dart';
import 'package:neighboroo/components/head.dart';
import 'package:neighboroo/components/nav.dart';
import 'package:neighboroo/models/AssetElement.dart';

import '../../constants.dart';

class NbItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: bg,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60.0),
          child: NbHead(),
        ),
        body: Container(
          child: Text("text")
        )
      );        
  }
}
