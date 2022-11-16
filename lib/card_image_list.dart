import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget{
 
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return Container(
    height: 350.0,
    child: ListView(
      padding: EdgeInsets.all(25.0),
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        CardImage("assets/images/wano.png"),
        CardImage("assets/images/water.png"), 
        CardImage("assets/images/arlong.png"),
        CardImage("assets/images/arabasta.png"),
        CardImage("assets/images/marineford.png"),
      ],
    ),
  );
  }

}