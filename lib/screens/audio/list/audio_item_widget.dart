import 'package:flutter/material.dart';

import '../../../colors.dart';

// ignore: must_be_immutable
class AudioItemWidget extends StatelessWidget{

  String image = '';
  String title = '';
  int length = 0;
  int listeners = 0;

  var defaultTextStyle = const TextStyle(
      color: customTextGreyColor
  );

  AudioItemWidget(this.image, this.title, this.length, this.listeners, {Key? key}) : super(key: key);

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
                    image: AssetImage(image)
                )
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                style: const TextStyle(
                    fontSize: 18,
                    color: customTextGrey900Color
                ),
              ),
              const SizedBox(height: 8),
              Text(listeners.toString()+ ' listeners',
                style: defaultTextStyle
              )
            ],
          ),
          const Spacer(),
          Text(
            length.toString() + ' Min',
            style: defaultTextStyle
          )
        ],
      ),
    );
  }

}