import 'package:flutter/material.dart';

// ignore: must_be_immutable
class RoundImage extends StatelessWidget{

  String image;
  double a;

  RoundImage(this.image, this.a, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: a,
      height: a,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(image)
          )
      ),
    );
  }

}