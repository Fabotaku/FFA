import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    //TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Review("assets/images/jesse.jpg", "Jesse Pinkman", "2 reviews 1 photo",5 ,"New Mexico"),
        Review("assets/images/marin.jpg", "Marin Kitagawa", "4 reviews 5 photo",3.5, "Tokyo"),
        Review("assets/images/marin.jpg", "Marin Kitagawa", "4 reviews 5 photo",3.5, "Tokyo"),
        Review("assets/images/marin.jpg", "Marin Kitagawa", "4 reviews 5 photo",3.5, "Tokyo"),
      ],
    );
  }
}