import 'package:flutter/material.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/AssetElement.dart';
import 'package:neighboroo/models/User.dart';


class NbChatElement extends StatelessWidget {
  final int id;
  final User user;
  final DateTime datetime;
  final String message;

  NbChatElement(this.id, this.user, this.datetime, this.message);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();
    Duration duration = now.difference(datetime);

    return ConstrainedBox(
      constraints: BoxConstraints(minHeight: 135),
      child: Container(
        height: 135,
        margin: new EdgeInsets.all(10),
        //height: 125.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          color: box_color,
        ),
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 1,
              left: 2,
              child: AssetElement('assets/icons/nb-icon-chat-light.png',
                  width: 20.0, height: 20.0),
            ),
            Positioned(
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Text(
                    "chat",
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.bold,
                      color: text_color,
                    ),
                  ),
                ),
                top: 2.7,
                left: 30),
            Positioned(
                child: Text(
                  duration.inMinutes > 59
                      ? (duration.inHours % 60).toString() +
                          ":" +
                          (duration.inMinutes % 60).toString() +
                          ":" +
                          (duration.inSeconds % 60).toString()
                      : (duration.inMinutes % 60).toString() +
                          ":" +
                          (duration.inSeconds % 60).toString(),
                  style: TextStyle(
                    color: text_color,
                    fontWeight: FontWeight.w100,
                  ),
                ),
                top: 2.7,
                right: 8),
            Positioned(
              top: 34,
              left: 10,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(7)),
                child: Image(
                  image: AssetImage('assets/images/nb-profilepic.png'),
                  width: 70.0,
                ),
              ),
            ),
            Positioned(
              top: 30,
              left: 95,
              child: Text(
                "from " + this.user.username,
                style: TextStyle(
                    color: text_color,
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Positioned(
              top: 25.0,
              child: Container(
                height: 2.0,
                width: MediaQuery.of(context).size.width,
                color: bg,
              ),
            ),
            Positioned(
              top: 60.0,
              left: 120.0,
              child: Container(
                //  color: Color(0x80000000),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        minWidth: 248,
                        maxWidth: MediaQuery.of(context).size.width * 0.6),
                    child: Container(
                      //  color: Color(0x80000000),
                      child: Text(this.message,
                          textHeightBehavior: TextHeightBehavior(
                              applyHeightToFirstAscent: true),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            height: 1,
                          )),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}