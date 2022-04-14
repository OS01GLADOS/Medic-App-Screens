import 'package:flutter/material.dart';

import 'default_text_style.dart';
// ignore: must_be_immutable
class TextInput extends StatelessWidget{
  String hint;
  TextInput(this.hint, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
            hintText: hint,
            hintStyle: defaultTextStyle
        )
    );
  }

}