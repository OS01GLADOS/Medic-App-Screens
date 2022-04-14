import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DownBar extends StatelessWidget {

  int activeItem = 0;
  DownBar({Key? key}) : super(key: key){
    activeItem = 0;
  }

  DownBar.setActive(this.activeItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
              width: (activeItem == 1)?  40 : 30,
              height: (activeItem == 1)?  40 : 30,
              image: AssetImage('assets/icons/b1'+((activeItem == 1)?  'a': '') + '.png',)),
          Image(
              width: (activeItem == 2)?  40 : 30,
              height: (activeItem == 2)?  40 : 30,
              image: AssetImage('assets/icons/b2'+((activeItem == 2)?  'a': '') + '.png',)),
          Image(
              width: (activeItem == 3)?  40 : 30,
              height: (activeItem == 3)?  40 : 30,
              image: AssetImage('assets/icons/b3'+((activeItem == 3)?  'a': '') + '.png',)),

        ],
      ),
    );
  }
}