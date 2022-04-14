import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

import 'bedtime_stats.dart';

class BedtimeChart extends StatefulWidget {

  final List<BedtimeStats> data1;
  final List<BedtimeStats> data2;

  const BedtimeChart({Key? key, required this.data1, required this.data2}) : super(key: key);

  @override
  State<BedtimeChart> createState() => _BedtimeChartState();
}

class _BedtimeChartState extends State<BedtimeChart> {
  @override
  Widget build(BuildContext context) {
    List<charts.Series<BedtimeStats, num>> series1 = [
      charts.Series(
          id: "bedtime",
          data: widget.data1,
          domainFn: (BedtimeStats series, _) => series.month,
          measureFn: (BedtimeStats series, _) => series.number,
          colorFn: (BedtimeStats series, _) => series.barColor
      )
    ];

    List<charts.Series<BedtimeStats, num>> series2 = [
      charts.Series(
          id: "bedtime",
          data: widget.data2,
          domainFn: (BedtimeStats series, _) => series.month,
          measureFn: (BedtimeStats series, _) => series.number,
          colorFn: (BedtimeStats series, _) => series.barColor
      )
    ];

    return SizedBox(
      height: 240,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Expanded(
            child: Stack(

                children: [
                  charts.LineChart(series1, animate: true),
                  charts.LineChart(series2, animate: true),
              ],
            )
          )
        ],
      ),

    );
  }
}