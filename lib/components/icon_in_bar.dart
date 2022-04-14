import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconInBar extends StatelessWidget {
  double side;
  String image;
  IconInBar(this.image, this.side, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image(width: side, height: side, image: AssetImage(image));
  }
}
