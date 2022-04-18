import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:medic_app_screens/colors.dart';

class BarChartSample2 extends StatefulWidget {
  const BarChartSample2({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => BarChartSample2State();
}

class BarChartSample2State extends State<BarChartSample2> {
  final Color leftBarColor = customColorScheme.secondary;
  final Color rightBarColor = customColorScheme.surface;
  final double width = 8;

  late List<BarChartGroupData> rawBarGroups;
  late List<BarChartGroupData> showingBarGroups;

  int touchedGroupIndex = -1;

  @override
  void initState() {
    super.initState();
    final barGroup1 = makeGroupData(0, 5, 7);
    final barGroup2 = makeGroupData(1, 8, 6);
    final barGroup3 = makeGroupData(2, 3, 5);
    final barGroup4 = makeGroupData(3, 10, 6);
    final barGroup5 = makeGroupData(4, 8, 6);
    final barGroup6 = makeGroupData(5, 7, 1.5);
    final barGroup7 = makeGroupData(6, 5, 2);

    final items = [
      barGroup1,
      barGroup2,
      barGroup3,
      barGroup4,
      barGroup5,
      barGroup6,
      barGroup7,
    ];

    rawBarGroups = items;

    showingBarGroups = rawBarGroups;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: BarChart(
        BarChartData(
          maxY: 10,
          barTouchData: BarTouchData(
              touchTooltipData: BarTouchTooltipData(
                getTooltipItem: (_a, _b, _c, _d) => null,
              ),
              touchCallback: (FlTouchEvent event, response) {
                if (response == null || response.spot == null) {
                  setState(() {
                    touchedGroupIndex = -1;
                    showingBarGroups = List.of(rawBarGroups);
                  });
                  return;
                }

                touchedGroupIndex = response.spot!.touchedBarGroupIndex;

                setState(() {
                  if (!event.isInterestedForInteractions) {
                    touchedGroupIndex = -1;
                    showingBarGroups = List.of(rawBarGroups);
                    return;
                  }
                  showingBarGroups = List.of(rawBarGroups);
                  if (touchedGroupIndex != -1) {
                    var sum = 0.0;
                    for (var rod
                        in showingBarGroups[touchedGroupIndex].barRods) {
                      sum += rod.toY;
                    }
                    final avg = sum /
                        showingBarGroups[touchedGroupIndex].barRods.length;

                    showingBarGroups[touchedGroupIndex] =
                        showingBarGroups[touchedGroupIndex].copyWith(
                      barRods: showingBarGroups[touchedGroupIndex]
                          .barRods
                          .map((rod) {
                        return rod.copyWith(toY: avg);
                      }).toList(),
                    );
                  }
                });
              }),
          titlesData: FlTitlesData(
            show: true,
            rightTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            topTitles: AxisTitles(
              sideTitles: SideTitles(showTitles: false),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: bottomTitles,
                reservedSize: 42,
              ),
            ),
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 28,
                interval: 1,
                getTitlesWidget: leftTitles,
              ),
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border(
              bottom: BorderSide(
                color: customColorScheme.onSurface.withOpacity(0.2),
                width: 1,
              ),
              left: const BorderSide(color: Colors.transparent),
              right: const BorderSide(color: Colors.transparent),
              top: BorderSide(
                  color: customColorScheme.onSurface.withOpacity(0.2),
                  width: 1,
              ),
            ),
          ),
          barGroups: showingBarGroups,
          gridData: FlGridData(
            show: true,
            drawHorizontalLine: true,
            getDrawingHorizontalLine: (value) {
              return FlLine(
                  color: customColorScheme.onSurface.withOpacity(0.2),
                  strokeWidth: 1,
                  dashArray: [3, 3]);
            },
            drawVerticalLine: false,
          ),
        ),
      ),
    );
  }

  Widget leftTitles(double value, TitleMeta meta) {
    var style = TextStyle(
      color: customColorScheme.onSurface,
      fontSize: 14,
    );
    String text;
    switch (value.toInt()) {
      case 0:
        text = '0 ';
        break;
      case 2:
        text = '199 ';
        break;
      case 4:
        text = '399 ';
        break;
      case 6:
        text = '599 ';
        break;
      case 8:
        text = '799 ';
        break;
      case 10:
        text = '999 ';
        break;
      default:
        return Container();
    }
    return Container(
      alignment: Alignment.centerRight,
      child: Text(text, style: style),
    );
  }

  Widget bottomTitles(double value, TitleMeta meta) {
    TextStyle style = TextStyle(
      color: customColorScheme.onSurface,
      fontSize: 14,
    );
    Widget text;
    switch (value.toInt()) {
      case 0:
        text = Text(
          'Mon',
          style: style,
        );
        break;
      case 1:
        text = Text(
          'Tue',
          style: style,
        );
        break;
      case 2:
        text = Text(
          'Wed',
          style: style,
        );
        break;
      case 3:
        text = Text(
          'Thu',
          style: style,
        );
        break;
      case 4:
        text = Text(
          'Fri',
          style: style,
        );
        break;
      case 5:
        text = Text(
          'Sat',
          style: style,
        );
        break;
      case 6:
        text = Text(
          'Sun',
          style: style,
        );
        break;
      default:
        text = Text(
          '',
          style: style,
        );
        break;
    }
    return Padding(padding: const EdgeInsets.only(top: 10), child: text);
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(barsSpace: 7, x: x, barRods: [
      BarChartRodData(
        toY: y1,
        color: leftBarColor,
        width: width,
      ),
      BarChartRodData(
        toY: y2,
        color: rightBarColor,
        width: width,
      ),
    ]);
  }
}
