import 'package:flutter/material.dart';

import '../../constants.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget{

  String text;
  var screen_height;
  var screen_width;


  ButtonWidget(this.text,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    screen_height = MediaQuery.of(context).size.height;
    screen_width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.only(top: screen_height*0.02, bottom: screen_height*0.01),
      padding: EdgeInsets.symmetric(vertical: screen_height*0.015),
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Center(
        child: Text(
          text,
          style: TextStyle(
              fontSize: mainTextSize,
              color: Theme.of(context).colorScheme.background),
        ),
      ),
    );
  }

}