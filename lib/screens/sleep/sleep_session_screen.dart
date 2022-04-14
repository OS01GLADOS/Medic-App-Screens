import 'package:flutter/material.dart';
import 'package:medic_app_screens/components/down_bar.dart';
import 'package:medic_app_screens/components/upper_bar.dart';

import 'package:charts_flutter/flutter.dart' as charts;

import '../../colors.dart';

import 'bedtime_stats.dart';
import 'bedtime_chart.dart';

// ignore: must_be_immutable
class SleepSessionCard extends StatefulWidget{

  late Color? color;
  String bigText = '';
  String littleText = '';
  String icon = '';

  SleepSessionCard(this.color, this.bigText, this.littleText, this.icon, {Key? key}) : super(key: key);

  @override
  State<SleepSessionCard> createState() => _SleepSessionCardState();
}

class _SleepSessionCardState extends State<SleepSessionCard> {
  @override
  Widget build(BuildContext context) {
   return Container(
     padding: const EdgeInsets.symmetric(vertical: 43, horizontal: 22),
     decoration: BoxDecoration(
       color: widget.color,
       borderRadius: BorderRadius.circular(20)
     ),
     child: Column(
       children: [
         Image(image:  AssetImage(widget.icon),),
         const SizedBox(height: 30),
         Text(
             widget.bigText,
           style: TextStyle(
             fontWeight: FontWeight.w600,
             fontSize: 19,
             color: customColorScheme.background
           ),
         ),
         const SizedBox(height: 10),
         Text(
             widget.littleText,
           style: TextStyle(
               color: customColorScheme.background
           ),
         ),
       ],
     ),
   );
  }
}


class SleepSessionScreen extends StatelessWidget{


  final List<BedtimeStats> data2 = [

    //from 110 to 1199
    BedtimeStats(
      month: 1,
      number: 900,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.surface),
    ),
    BedtimeStats(
      month: 2,
      number: 112,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.surface),
    ),
    BedtimeStats(
      month: 3,
      number: 743,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.surface),
    ),
    BedtimeStats(
      month: 4,
      number: 500,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.surface),
    ),
    BedtimeStats(
      month: 5,
      number: 1110,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.surface),
    ),
    BedtimeStats(
      month: 6,
      number: 300,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.surface),
    ),
    BedtimeStats(
      month: 7,
      number: 321,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.surface),
    ),
    BedtimeStats(
      month: 8,
      number: 873,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.surface),
    ),
    BedtimeStats(
      month: 9,
      number: 200,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.surface),
    ),
    BedtimeStats(
      month: 10,
      number: 957,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.surface),
    ),
    BedtimeStats(
      month: 11,
      number: 387,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.surface),
    ),
    BedtimeStats(
      month: 12,
      number: 999,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.surface),
    ),
  ];
  final List<BedtimeStats> data1 = [

    BedtimeStats(
      month: 1,
      number: 1132,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.secondary),
    ),
    BedtimeStats(
      month: 2,
      number: 500,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.secondary),
    ),
    BedtimeStats(
      month: 3,
      number: 888,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.secondary),
    ),
    BedtimeStats(
      month: 4,
      number: 232,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.secondary),
    ),
    BedtimeStats(
      month: 5,
      number: 1118,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.secondary),
    ),
    BedtimeStats(
      month: 6,
      number: 1200,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.secondary),
    ),
    BedtimeStats(
      month: 7,
      number: 552,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.secondary),
    ),
    BedtimeStats(
      month: 8,
      number: 432,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.secondary),
    ),
    BedtimeStats(
      month: 9,
      number: 608,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.secondary),
    ),
    BedtimeStats(
      month: 10,
      number: 1,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.secondary),
    ),
    BedtimeStats(
      month: 11,
      number: 222,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.secondary),
    ),
    BedtimeStats(
      month: 12,
      number: 333,
      barColor: charts.ColorUtil.fromDartColor(customColorScheme.secondary),
    ),

    ];

  SleepSessionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            const UpperBar(),
            Expanded(
               child: Container(
                 width: double.infinity,
                 margin: const EdgeInsets.symmetric(horizontal: 20),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     const Text(
                       'Sleep Session',
                       style: TextStyle(
                         color: customTextGrey700Color,
                         fontWeight: FontWeight.w700,
                         fontSize: 33
                       ),
                     ),
                     const SizedBox(height: 20),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           SleepSessionCard(Theme.of(context).colorScheme.secondary, '5h 30m', 'Sleep', 'assets/icons/moon.png'),
                           SleepSessionCard(Theme.of(context).colorScheme.primary, '1h 10m', 'Deep', 'assets/icons/halfss.png'),
                           SleepSessionCard(Theme.of(context).colorScheme.secondary, '3h 30m', 'Quality', 'assets/icons/star.png'),
                         ],
                     ),
                     const SizedBox(height: 20),
                     const Text('Bedtime',
                       style: TextStyle(
                           color: customTextGrey700Color,
                           fontWeight: FontWeight.w700,
                           fontSize: 33
                       ),
                     ),
                     const SizedBox(height: 20),
                     BedtimeChart(
                       data1: data1,
                       data2: data2
                     )

                   ],
                 ),
               )
            ),
            DownBar()
          ],
        )
    );
  }
}