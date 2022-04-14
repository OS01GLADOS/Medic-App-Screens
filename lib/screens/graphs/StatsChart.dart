import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import 'Stats.dart';

class StatsChart extends StatelessWidget {

  final List<Stats> data;

  StatsChart({required this.data});

  @override
  Widget build(BuildContext context) {
    List<charts.Series<Stats, String>> series = [
      charts.Series(
          id: "developers",
          data: data,
          domainFn: (Stats series, _) => series.dayName,
          measureFn: (Stats series, _) => series.number,
          colorFn: (Stats series, _) => series.barColor
      )
    ];

    return Container(
      height: 240,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: charts.BarChart(series, animate: true),
              )
            ],
          ),

    );
  }
}