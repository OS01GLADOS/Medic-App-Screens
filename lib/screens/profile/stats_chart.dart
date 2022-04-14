import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';
import '../../colors.dart';
import 'stats.dart';


class StatsChart extends StatefulWidget {

  final List<Stats> data;

  const StatsChart({Key? key, required this.data}) : super(key: key);

  @override
  State<StatsChart> createState() => _StatsChartState();
}

class _StatsChartState extends State<StatsChart> {
  @override
  Widget build(BuildContext context) {
    List<charts.Series<Stats, String>> series = [
      charts.Series(
          id: "profile_stats",
          data: widget.data,
          domainFn: (Stats series, _) => series.dayName,
          measureFn: (Stats series, _) => series.number,
          colorFn: (Stats series, _) => series.barColor
      )
    ];

    return SizedBox(
      height: 240,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: charts.BarChart(
                  series,
                  animate: true,
                  domainAxis: const charts.OrdinalAxisSpec(
                      renderSpec: charts.SmallTickRendererSpec(
                        // Tick and Label styling here.
                          labelStyle: charts.TextStyleSpec(
                              color: customChartColor),

                          // Change the line colors to match text color.
                          lineStyle: charts.LineStyleSpec(
                              color: customChartColor))),
                  primaryMeasureAxis: const charts.NumericAxisSpec(
                      renderSpec: charts.GridlineRendererSpec(

                        // Tick and Label styling here.
                          labelStyle: charts.TextStyleSpec(
                              color: customChartColor),

                          // Change the line colors to match text color.
                          lineStyle: charts.LineStyleSpec(
                              color: customChartColor))),
                ),
              )
            ],
          ),

    );
  }
}