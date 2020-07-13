import 'package:flutter/material.dart';
import 'package:neighboroo/components/button.dart';
import 'package:neighboroo/constants.dart';
import 'package:neighboroo/models/AssetElement.dart';
import 'package:neighboroo/models/User.dart';


class NbSellElement extends StatefulWidget {
  final int id;
  final User user;
  final DateTime datetime;
  final String message;
  final double price;
  final String itemname;

  NbSellElement(this.id, this.user, this.datetime, this.message, {this.itemname,this.price});

  @override
  _NbSellElementState createState() => _NbSellElementState(this.id, this.user, this.datetime, this.message, itemnameS: this.itemname, priceS: this.price);
}

class _NbSellElementState extends State<NbSellElement> {
  final int idS;
  final User userS;
  final DateTime datetimeS;
  final double priceS;
  final String messageS;
  final String itemnameS;

  _NbSellElementState(this.idS, this.userS, this.datetimeS, this.messageS, {this.itemnameS, this.priceS});

  @override
  Widget build(BuildContext context) {
    String minute = datetimeS.minute > 9 ? datetimeS.minute.toString() : "0" + datetimeS.minute.toString();

    return Container(
      margin: EdgeInsets.all(7.0),
      decoration: BoxDecoration(
        color: box_color,
        borderRadius: BorderRadius.all(Radius.circular(7.0)),
      ),
      child: Column(
        children: <Widget>[
          //topbar
          Container(
            child: (Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    AssetElement('assets/icons/nb-icon-items-1.png',
                        size: 20),
                    Text("Items", style: TextStyle(
                      color: text_color,
                    ),)
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(5),
                  child: Text(this.datetimeS.day.toString() + "." + this.datetimeS.month.toString()+ ". " +this.datetimeS.hour.toString() + ":" + minute,
                      style: TextStyle(color: text_color, fontWeight: FontWeight.bold),),
                ),
              ],
            )),
          ),
          //middlebar
          Container(
            child: Column(
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // ClipRRect(
                      //   borderRadius: BorderRadius.all(Radius.circular(7.0)),
                      //   child: AssetElement("assets/images/nb-village.jpg", size: 100)),

                      Container(
                        child: Column(
                          
                          
                          children: <Widget>[
                            Container(
                              
                              margin: EdgeInsets.all(7.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.all(Radius.circular(10)),
                                child: Image(
                                  image: AssetImage('assets/images/nb-milch.jpg'),
                                  width: 150.0,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 7.0),
                              padding: EdgeInsets.all(10),
                              width: 150,
                              decoration: BoxDecoration(
                                color: box_color,
                                borderRadius: BorderRadius.all(Radius.circular(7.0)),
                              ),
                              child: ConstrainedBox(
                                
                                constraints: BoxConstraints(maxWidth: 130.0),
                                child: Center(
                                  child: Text(this.itemnameS?? "item by " + this.userS.name, 
                                    style: TextStyle(color: text_color,
                                      
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(7.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              child: Text(
                                userS.name,
                                style: TextStyle(
                                  color: text_color,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: 20,
                                ),
                                
                                ConstrainedBox(
                                  
                                  constraints: BoxConstraints(
                                      maxWidth:
                                    MediaQuery.of(context).size.width *0.49),
                                  child: Text(messageS,style: TextStyle(color: text_color),),
                                ),
                              ],
                            ),
                            //buttonrow
                            Container(
                              width: MediaQuery.of(context).size.width * 0.53,
                              
                              child: Container(
                                
                                margin: EdgeInsets.all(7.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Container(
                                      margin: EdgeInsets.only(right: 5.0),
                                      child: NbButton(
                                          buttonname: "ignore", buttoncolor: button_green, buttonfunction: ()=> print("ignore")),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 5.0),
                                      child: NbButton(
                                          buttonname: "message", buttoncolor: button_green, buttonfunction: ()=>print("object"),),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ]
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}