import 'package:flutter/material.dart';

import '../../constants.dart';


// ignore: must_be_immutable
class ToolsItem extends StatefulWidget{

  String text = '';
  String icon = '';

  ToolsItem(t, i, {Key? key}) : super(key: key){
    text = t;
    icon = i;
  }

  @override
  State<ToolsItem> createState() => _ToolsItemState();
}

class _ToolsItemState extends State<ToolsItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 140,
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.only(left: 15, bottom: 25),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        image: const DecorationImage(
          image: AssetImage("assets/images/tool_bgr.png"),
          alignment: Alignment(0, 1.05),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          Image(
            width: 35,
            height: 35,
            image: AssetImage(widget.icon),
          ),
          Padding(
              padding: const EdgeInsets.only(top:5),
              child: Text(widget.text,
                style: TextStyle(
                    color:Theme.of(context).colorScheme.background,
                    fontSize: textSize * 0.75
                ),
              )
          )
        ],
      ),
    );
  }
}