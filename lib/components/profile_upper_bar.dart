import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class ProfileUpperBar extends StatelessWidget {
  const ProfileUpperBar({Key? key}) : super(key: key);

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
                alignment: Alignment.center,
                child: const Text('edit',
                  style: TextStyle(
                    color: customBlueColor,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2,
                  )
                  )
            )
          ]
      ),
    );
  }
}