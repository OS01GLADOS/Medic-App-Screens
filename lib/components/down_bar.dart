import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



// ignore: must_be_immutable
class DownBar extends StatelessWidget {
  int activeItem = 0;
  DownBar({Key? key}) : super(key: key) {
    activeItem = 0;
  }

  var normalSide = 30.0;
  var bigSide = 40.0;

  DownBar.setActive(this.activeItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.05,
          vertical: MediaQuery.of(context).size.height * 0.025
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
              width: (activeItem == 1) ? bigSide : normalSide,
              height: (activeItem == 1) ? bigSide : normalSide,
              image: AssetImage(
                'assets/icons/b1' + ((activeItem == 1) ? 'a' : '') + '.png',
              )),
          Image(
              width: (activeItem == 2) ? bigSide : normalSide,
              height: (activeItem == 2) ? bigSide : normalSide,
              image: AssetImage(
                'assets/icons/b2' + ((activeItem == 2) ? 'a' : '') + '.png',
              )),
          Image(
              width: (activeItem == 3) ? bigSide : normalSide,
              height: (activeItem == 3) ? bigSide : normalSide,
              image: AssetImage(
                'assets/icons/b3' + ((activeItem == 3) ? 'a' : '') + '.png',
              )),
        ],
      ),
    );
  }
}
