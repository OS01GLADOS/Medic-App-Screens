import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class down_bar extends StatelessWidget {
  int active_item = 1;
  down_bar(){
    active_item = 0;
  }

  down_bar.setActive(int number){
    active_item = number;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
              width: (active_item == 1)?  40 : 30,
              height: (active_item == 1)?  40 : 30,
              image: AssetImage('assets/icons/b1'+((active_item == 1)?  'a': '') + '.png',)),
          Image(
              width: (active_item == 2)?  40 : 30,
              height: (active_item == 2)?  40 : 30,
              image: AssetImage('assets/icons/b2'+((active_item == 2)?  'a': '') + '.png',)),
          Image(
              width: (active_item == 3)?  40 : 30,
              height: (active_item == 3)?  40 : 30,
              image: AssetImage('assets/icons/b3'+((active_item == 3)?  'a': '') + '.png',)),

        ],
      ),
    );
  }
}