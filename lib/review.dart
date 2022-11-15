import 'package:flutter/material.dart';
import 'description_place.dart';
import 'rating.dart';

class Review extends StatelessWidget {
  String pathImage;
  String name = "Marin Kitagawa";
  String details = "1 review 5 photos";
  String comment = "There is a nice place";
  double stars = 5;

  Review(this.pathImage, this.name, this.details, this.stars,this.comment);

  @override
  Widget build(BuildContext context) {
    // TODO : implement build

    final userName = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 17.0, fontFamily: "Lato"),
      ),
    );

    final userInfo = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20.0),
          child: Text(details,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontFamily: 'Lato',
                fontSize: 13.0,
                color: Color(0xFFa3a5a7),
              )),
        ),
        Rating(stars, 5.0, 14.0)
      ],
    );

    final userComment = Container(
      margin: EdgeInsets.only(left: 20.0),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(fontSize: 13.0, fontFamily: "Lato", fontWeight: FontWeight.w900),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        userName, userInfo, userComment,
      ],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    return Row(
      children: <Widget>[photo, userDetails],
    );
  }
}
