import 'package:flutter/material.dart';

import '../../colors.dart';

// ignore: must_be_immutable
class SleepSessionCard extends StatefulWidget{

  late Color? color;
  String bigText = '';
  String littleText = '';
  String icon = '';

  SleepSessionCard(this.color, this.bigText, this.littleText, this.icon, {Key? key}) : super(key: key);

  @override
  State<SleepSessionCard> createState() => _SleepSessionCardState();
}

class _SleepSessionCardState extends State<SleepSessionCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 43, horizontal: 22),
      decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          Image(image:  AssetImage(widget.icon),),
          const SizedBox(height: 30),
          Text(
            widget.bigText,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 19,
                color: customColorScheme.background
            ),
          ),
          const SizedBox(height: 10),
          Text(
            widget.littleText,
            style: TextStyle(
                color: customColorScheme.background
            ),
          ),
        ],
      ),
    );
  }
}