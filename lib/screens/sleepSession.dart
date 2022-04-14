import 'package:flutter/material.dart';
import 'package:medic_app_screens/components/down_bar.dart';
import 'package:medic_app_screens/components/upper_bar.dart';

import 'package:charts_flutter/flutter.dart' as charts;

import '../colors.dart';
import 'graphs/BedtimeStats.dart';
import 'graphs/bedtimeChart.dart';

class sleep_session_card extends StatelessWidget{

  late Color? color;
  String bigText = '';
  String littleText = '';
  String icon = '';

  sleep_session_card(this.color, this.bigText, this.littleText, this.icon);

  @override
  Widget build(BuildContext context) {
   return Container(
     padding: EdgeInsets.symmetric(vertical: 43, horizontal: 22),
     decoration: BoxDecoration(
       color: color,
       borderRadius: BorderRadius.circular(20)
     ),
     child: Column(
       children: [
         Image(image:  AssetImage(icon),),
         SizedBox(height: 30),
         Text(
             bigText,
           style: TextStyle(
             fontWeight: FontWeight.w600,
             fontSize: 19,
             color: customColorScheme.background
           ),
         ),
         SizedBox(height: 10),
         Text(
             littleText,
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

  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            upper_bar(),
            Expanded(
               child: Container(
                 width: double.infinity,
                 margin: EdgeInsets.symmetric(horizontal: 20),
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text(
                       'Sleep Session',
                       style: TextStyle(
                         color: customTextGrey700Color,
                         fontWeight: FontWeight.w700,
                         fontSize: 33
                       ),
                     ),
                     SizedBox(height: 20),
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           sleep_session_card(Theme.of(context).colorScheme.secondary, '5h 30m', 'Sleep', 'assets/icons/moon.png'),
                           sleep_session_card(Theme.of(context).colorScheme.primary, '1h 10m', 'Deep', 'assets/icons/halfss.png'),
                           sleep_session_card(Theme.of(context).colorScheme.secondary, '3h 30m', 'Quality', 'assets/icons/star.png'),
                         ],
                     ),
                     SizedBox(height: 20),
                     Text('Bedtime',
                       style: TextStyle(
                           color: customTextGrey700Color,
                           fontWeight: FontWeight.w700,
                           fontSize: 33
                       ),
                     ),
                     SizedBox(height: 20),
                     BedtimeChart(
                       data1: data1,
                       data2: data2
                     )

                   ],
                 ),
               )
            ),
            down_bar()
          ],
        )
    );
  }
}