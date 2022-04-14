import 'package:flutter/material.dart';

import '../../../colors.dart';

// ignore: must_be_immutable
class AudioItemWidget extends StatefulWidget{

  String image = '';
  String title = '';
  int length = 0;
  int listeners = 0;

  AudioItemWidget(this.image, this.title, this.length, this.listeners, {Key? key}) : super(key: key);

  @override
  State<AudioItemWidget> createState() => _AudioItemWidgetState();
}

class _AudioItemWidgetState extends State<AudioItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            margin: const EdgeInsets.only(right: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(widget.image)
                )
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.title,
                style: const TextStyle(
                    fontSize: 18,
                    color: customTextGrey900Color
                ),
              ),
              const SizedBox(height: 8),
              Text(widget.listeners.toString()+ ' listeners',
                style: const TextStyle(
                    color: customTextGreyColor
                ),
              )
            ],
          ),
          const Spacer(),
          Text(
            widget.length.toString() + ' Min',
            style: const TextStyle(
                color: customTextGreyColor
            ),
          )
        ],
      ),
    );
  }
}