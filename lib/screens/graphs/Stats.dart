import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/foundation.dart';


class Stats {
  final String dayName;
  final int number;
  final charts.Color barColor;

  Stats(
      {
        required this.dayName,
        required this.number,
        required this.barColor
      }
      );
}