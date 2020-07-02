import 'package:flutter/material.dart';
import 'package:neighboroo/constants.dart';

class NbButton extends StatefulWidget {
  String buttonname;
  var buttonfunction;
  Color buttoncolor;
  double buttonheight;
  double buttonwidth;
  NbButton({this.buttonwidth, this.buttonheight,this.buttonname,this.buttonfunction,this.buttoncolor});

  @override
  _NbButtonState createState() => _NbButtonState(buttonheight: this.buttonheight, buttonwidth: this.buttonwidth, buttonname: this.buttonname, buttonfunction: this.buttonfunction, buttoncolor: buttoncolor);
}

class _NbButtonState extends State<NbButton> {
  String buttonname;
  var buttonfunction;
  Color buttoncolor;
  double buttonheight;
  double buttonwidth;

  _NbButtonState({this.buttonwidth, this.buttonheight,this.buttonname,this.buttonfunction,this.buttoncolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: buttonwidth,
      height: buttonheight,
      child: DecoratedBox(
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: this.buttoncolor,
              style: BorderStyle.none),
              borderRadius: BorderRadius.all(Radius.circular(7))),
              color: buttoncolor
            ),
        child: Theme(
          data: Theme.of(context).copyWith(
            buttonTheme: ButtonTheme.of(context).copyWith(
                materialTapTargetSize:
                    MaterialTapTargetSize.shrinkWrap)),
          child: FlatButton(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: button_red,
                width: buttonwidth ?? 10,
                style: BorderStyle.none)),
            child: Text(this.buttonname, style: TextStyle(color: text_color),),
            onPressed: buttonfunction,
          ),
        ),
      ),
    );
  }
}