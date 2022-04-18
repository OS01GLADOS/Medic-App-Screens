import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';

// ignore: must_be_immutable
class PicLabels extends StatelessWidget{

  String topLabel;
  String bottomLabel;
  var alignment;

  PicLabels( this.topLabel, this.bottomLabel, {Key? key}) : super(key: key){
    alignment = CrossAxisAlignment.center;
  }
  PicLabels.leftSide( this.topLabel, this.bottomLabel, {Key? key}) : super(key: key){
    alignment = CrossAxisAlignment.end;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          topLabel,
          style: const TextStyle(
              color: customTextGrey700Color,
              fontWeight: FontWeight.w700,
              fontSize: 33
          ),
        ),
        Text(
          bottomLabel,
          style: const TextStyle(
            fontSize: textSize,
            color: customTextGreyColor,
          ),
        ),
      ],
    );
  }

}