import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/ActionType.dart';

class NbHead extends StatelessWidget {
  Color headcolor;
  String searchtext;
  ActionType at;

  NbHead({this.headcolor, this.searchtext, this.at});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      
      actions: [
        NbHeadSearchbar(searchtext: this.searchtext),
        Row(
          children: <Widget>[
            Builder(
              builder: (context) => InkWell(
                onTap: () => Scaffold.of(context).openEndDrawer(),
                child: NbHeadDrawer()
              )
              // IconButton(
              //       icon: Icon(Icons.filter),
              //       onPressed: () => Scaffold.of(context).openEndDrawer(),
              //       // tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              //     ),
            ),
          ],
        ),
        // SizedBox(
        //   width: MediaQuery.of(context).size.width * 0.05,
        // )
      ],
      // actions: <Widget>[
      //   // NbHeadSearchbar(searchtext: this.searchtext)
      // ],
      backgroundColor: headcolor,
      elevation: 0,
    );
  }
}


class NbHeadDrawer extends StatefulWidget {
  @override
  _NbHeadDrawerState createState() => _NbHeadDrawerState();
}

class _NbHeadDrawerState extends State<NbHeadDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.only(bottom: 0.0, top: 0.0, left: 0.0, right: 10.0),
      child: ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(7)),
        child: Image(
          image: AssetImage('assets/images/nb-profilepic.png'),          
          
        ),
      ),
    );
  }
}

class NbHeadSearchbar extends StatefulWidget {
  String searchtext;

  NbHeadSearchbar({@required this.searchtext});

  @override
  _NbHeadSearchbarState createState() => _NbHeadSearchbarState();
}

class _NbHeadSearchbarState extends State<NbHeadSearchbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      margin: new EdgeInsets.only(right: 10.0, left: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 3.0),
      width: MediaQuery.of(context).size.width * 0.79,
      // height: 30.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(7)),
      color: box_color,
    ),
    child: TextField(
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(top: 0.0),
        icon: SvgPicture.asset("assets/icons/spec.svg",
        width: 22.0,
        height: 22.0,
      ),
      focusColor: Colors.blue,
      fillColor: Colors.black,
      enabledBorder: InputBorder.none,
      focusedBorder: InputBorder.none,
      hintText: this.widget.searchtext ?? "search",
      hintStyle: TextStyle(                    
        color: Colors.white,
      ),
    ),
  ),
);
}
}