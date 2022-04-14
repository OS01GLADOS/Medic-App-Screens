// ignore: must_be_immutable
import 'package:flutter/material.dart';

class PlayerControlButton extends StatelessWidget{
  var icon;
  var color;
  PlayerControlButton(this.icon, this.color,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      color: color,
      size: 30,
    );
  }

}