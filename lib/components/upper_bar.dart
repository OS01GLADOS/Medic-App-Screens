import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpperBar extends StatelessWidget {
  const UpperBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      padding: const EdgeInsets.only(top: 50, bottom: 30),
      child: Row(
        children:[
          const Image(
              width: 50,
              height: 50,
              image: AssetImage('assets/icons/hamburger.png')),
          const Spacer(),
          const Image(
              width: 50,
              height: 50,
              image: AssetImage('assets/images/logo.png')),
          const Spacer(),
          Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/patrik.jpg')),
              )
          )
        ]
      ),
    );
  }
}