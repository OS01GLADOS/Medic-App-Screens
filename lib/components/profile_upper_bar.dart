import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class profile_upper_bar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.only(top: 50, bottom: 30),
      child: Row(
          children:[
            Image(
                width: 50,
                height: 50,
                image: AssetImage('assets/icons/hamburger.png')),
            Spacer(),
            Image(
                width: 50,
                height: 50,
                image: AssetImage('assets/images/logo.png')),
            Spacer(),
            Container(
                width: 50,
                height: 50,
                alignment: Alignment.center,
                child: Text('edit',
                  style: TextStyle(
                    color: Colors.blue,
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