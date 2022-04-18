import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:medic_app_screens/colors.dart';

import '../../constants.dart';

class SleepStatistic extends StatelessWidget {
  const SleepStatistic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 260,
        child: LineChart(
          lineChartConfig,
          swapAnimationDuration: const Duration(milliseconds: 250),
        ));
  }

  LineChartData get lineChartConfig => LineChartData(
        lineTouchData: lineTouchConfig,
        gridData: gridConfig,
        titlesData: titlesDataConfig,
        borderData: borderConfig,
        lineBarsData: lineBarsData,
        minX: 0,
        maxX: 14,
        maxY: 9,
        minY: 4,
      );

  LineTouchData get lineTouchConfig => LineTouchData(
        handleBuiltInTouches: true,
        touchTooltipData: LineTouchTooltipData(
          tooltipBgColor: customTextGrey900Color.withOpacity(0.8),
          tooltipRoundedRadius: 10,
        ),
      );

  FlTitlesData get titlesDataConfig => FlTitlesData(
        bottomTitles: AxisTitles(
          sideTitles: bottomTitlesConfig,
        ),
        rightTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        topTitles: AxisTitles(
          sideTitles: SideTitles(showTitles: false),
        ),
        leftTitles: AxisTitles(
          sideTitles: leftTitlesConfig(),
        ),
      );

  List<LineChartBarData> get lineBarsData => [
        lineChartGreen,
        lineChartYellow,
      ];
  LineChartBarData get lineChartGreen => customLineChartBarData(
      customColorScheme.secondary, greenDotsBedtimeStatistic);
  LineChartBarData get lineChartYellow => customLineChartBarData(
      customColorScheme.surface, yellowDotsBedtimeStatistic);
  customLineChartBarData(color, spots) {
    return LineChartBarData(
        isCurved: true,
        color: color,
        barWidth: 4,
        isStrokeCapRound: true,
        dotData: FlDotData(show: false),
        belowBarData: BarAreaData(
          show: false,
        ),
        spots: spots);
  }

  SideTitles leftTitlesConfig() => SideTitles(
        getTitlesWidget: leftTitleWidgets,
        showTitles: true,
        interval: 1,
      );
  Widget leftTitleWidgets(double value, TitleMeta meta) {
    var style = TextStyle(
      color: customColorScheme.onSurface,
      fontWeight: FontWeight.bold,
    );
    String text;
    var x = value.toInt();
    if (x < 4) {
      text = '<4h';
    } else if (x > 10) {
      text = '>10h';
    } else {
      switch (x) {
        case 4:
          text = '4h';
          break;
        case 5:
          text = '5h';
          break;
        case 6:
          text = '6h';
          break;
        case 7:
          text = '7h';
          break;
        case 8:
          text = '8h';
          break;
        case 9:
          text = '9h';
          break;
        default:
          return Container();
      }
    }
    return Text(text, style: style, textAlign: TextAlign.center);
  }

  SideTitles get bottomTitlesConfig => SideTitles(
        showTitles: true,
        reservedSize: 30,
        interval: 1,
        getTitlesWidget: bottomTitleWidgets,
      );
  Widget bottomTitleWidgets(double value, TitleMeta meta) {
    var style = TextStyle(
      color: customColorScheme.onSurface,
      fontWeight: FontWeight.bold,
      fontSize: 12,
    );
    Widget text;
    switch (value.toInt()) {
      case 1:
        text = Text('Jan ', style: style);
        break;
      case 3:
        text = Text('Feb ', style: style);
        break;
      case 5:
        text = Text('Mar ', style: style);
        break;
      case 7:
        text = Text('Apr ', style: style);
        break;
      case 9:
        text = Text('May ', style: style);
        break;
      case 11:
        text = Text('Jun ', style: style);
        break;
      case 13:
        text = Text('Jul ', style: style);
        break;
      default:
        text = const Text('');
        break;
    }

    return Padding(child: text, padding: const EdgeInsets.only(top: 15.0));
  }

  FlGridData get gridConfig => FlGridData(
        show: true,
        drawHorizontalLine: true,
        getDrawingHorizontalLine: (value) {
          return FlLine(
            color: customColorScheme.onSurface.withOpacity(0.4),
            strokeWidth: 1,
          );
        },
        drawVerticalLine: false,
        horizontalInterval: 1,
      );

  FlBorderData get borderConfig => FlBorderData(
        show: true,
        border: Border(
          bottom: BorderSide(
              color: customColorScheme.onSurface.withOpacity(0.4), width: 1),
          left: const BorderSide(color: Colors.transparent),
          right: const BorderSide(color: Colors.transparent),
          top: BorderSide(
              color: customColorScheme.onSurface.withOpacity(0.4), width: 1),
        ),
      );
}
