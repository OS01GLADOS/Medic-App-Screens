import 'package:flutter/material.dart';

import '../../colors.dart';
import '../../constants.dart';

class ButtonBottomText extends StatelessWidget {
  String text;
  String boldText;

  ButtonBottomText(this.text, this.boldText, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text,
            style: const TextStyle(
                fontSize: textSize, color: customTextGreyColor)),
        Text(boldText,
            style: const TextStyle(
                fontSize: textSize,
                color: customTextGreyColor,
                fontWeight: FontWeight.bold))
      ],
    );
  }
}