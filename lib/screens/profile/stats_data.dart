import '../../colors.dart';
import 'stats.dart';
import 'package:charts_flutter/flutter.dart' as charts;

final profileData = [
  Stats(
    dayName: 'Mon',
    number: 100,
    barColor: charts.ColorUtil.fromDartColor(customColorScheme.secondary),
  ),
  Stats(
    dayName: '',
    number: 199,
    barColor: charts.ColorUtil.fromDartColor(customColorScheme.surface),
  ),
  Stats(
    dayName: 'Tue',
    number: 243,
    barColor: charts.ColorUtil.fromDartColor(customColorScheme.secondary),
  ),
  Stats(
    dayName: '  ',
    number: 200,
    barColor: charts.ColorUtil.fromDartColor(customColorScheme.surface),
  ),
  Stats(
    dayName: 'Wed',
    number: 300,
    barColor: charts.ColorUtil.fromDartColor(customColorScheme.secondary),
  ),
  Stats(
    dayName: '   ',
    number: 274,
    barColor: charts.ColorUtil.fromDartColor(customColorScheme.surface),
  ),
  Stats(
    dayName: 'Thu',
    number: 400,
    barColor: charts.ColorUtil.fromDartColor(customColorScheme.secondary),
  ),
  Stats(
    dayName: '    ',
    number: 324,
    barColor: charts.ColorUtil.fromDartColor(customColorScheme.surface),
  ),
  Stats(
    dayName: 'Fri',
    number: 520,
    barColor: charts.ColorUtil.fromDartColor(customColorScheme.secondary),
  ),
  Stats(
    dayName: '     ',
    number: 534,
    barColor: charts.ColorUtil.fromDartColor(customColorScheme.surface),
  ),
  Stats(
    dayName: 'Sat',
    number: 650,
    barColor: charts.ColorUtil.fromDartColor(customColorScheme.secondary),
  ),
  Stats(
    dayName: '      ',
    number: 534,
    barColor: charts.ColorUtil.fromDartColor(customColorScheme.surface),
  ),
  Stats(
    dayName: 'Sun',
    number: 650,
    barColor: charts.ColorUtil.fromDartColor(customColorScheme.secondary),
  ),
  Stats(
    dayName: '        ',
    number: 900,
    barColor: charts.ColorUtil.fromDartColor(customColorScheme.surface),
  ),
];
