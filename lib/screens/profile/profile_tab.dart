import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileTab extends StatelessWidget {
  var color;
  String text;

  ProfileTab(this.text, this.color, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      padding: const EdgeInsets.only(bottom: 7),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
              width: 5.0,
              color: color),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontWeight: FontWeight.w600,
            color: color),
      ),
    );
  }

}