import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'icon_in_bar.dart';

class UpperBar extends StatelessWidget {

  var screen_height;
  var screen_width;

  UpperBar({Key? key}) : super(key: key);

  //MediaQuery.of(context).size.width * 0.5,

  @override
  Widget build(BuildContext context) {

    screen_height = MediaQuery.of(context).size.height;
    screen_width = MediaQuery.of(context).size.width;

    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: screen_width * 0.05,
      ),
      padding: EdgeInsets.only(
          top: screen_height * 0.05,
          bottom: screen_height * 0.03,
      ),
      child: Row(children: [
        IconInBar('assets/icons/hamburger.png', upperBarIconSide),
        const Spacer(),
        IconInBar('assets/images/logo.png', upperBarIconSide),
        const Spacer(),
        Container(
            width: upperBarIconSide,
            height: upperBarIconSide,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/patrik.jpg')),
            ))
      ]),
    );
  }
}
