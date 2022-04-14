import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MoodSelectionWidget extends StatefulWidget{
  String icon = '';
  String title = '';

  MoodSelectionWidget(String i, String t, {Key? key}) : super(key: key){
    icon = i;
    title = t;
  }

  @override
  State<MoodSelectionWidget> createState() => _MoodSelectionWidgetState();
}

class _MoodSelectionWidgetState extends State<MoodSelectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          margin: const EdgeInsets.only(bottom: 5),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Image(
            width: 40,
            height: 40,
            image: AssetImage(widget.icon),
          ),
        ),
        Text(
          widget.title,
          style: TextStyle(
              color: Theme.of(context).colorScheme.onSurface
          ),
        )
      ],
    );
  }
}