import 'package:charts_flutter/flutter.dart' as charts;

class BedtimeStats {
  final int month;
  final int number;
  final charts.Color barColor;

  BedtimeStats(
      {
        required this.month,
        required this.number,
        required this.barColor
      }
      );
}