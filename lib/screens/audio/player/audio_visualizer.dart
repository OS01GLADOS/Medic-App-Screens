import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AudioVisualizer extends StatefulWidget{

  var color;
  double height = 20;

  AudioVisualizer(this.color, this.height, {Key? key}) : super(key: key);

  @override
  State<AudioVisualizer> createState() => _AudioVisualizerState();
}

class _AudioVisualizerState extends State<AudioVisualizer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4,
      height: widget.height,
      margin: const EdgeInsets.symmetric(horizontal: 1.5),
      decoration: BoxDecoration(
          color: widget.color,
          borderRadius: BorderRadius.circular(20)
      ),
    );
  }
}