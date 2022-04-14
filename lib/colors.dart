import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'dart:ui';

const customChartColor = charts.Color(r:129, g:133, b:134);
const customTextGreyColor = Colors.grey;
const customTextGrey900Color = Color(0x212121FF);
const customTextGrey700Color = Color(0x616161FF);
const customBlueColor = Colors.blue;
const customGrey = Color(0x1DBDB9B9);

const ColorScheme customColorScheme = ColorScheme(
  primary: Color(0xFF61B15A),
  primaryVariant: Color(0xFF61B15A),
  secondary: Color(0xFFADCE74),
  secondaryVariant: Color(0xFFCDE6CB),
  surface: Color(0xFFFFF76A),
  background: Colors.white,
  error: Colors.red,
  onPrimary: Colors.red,
  onSecondary: Colors.red,
  onSurface: Color(0xFF818586), //input field background
  onBackground: Colors.red,
  onError: Colors.red,
  brightness: Brightness.light,
);