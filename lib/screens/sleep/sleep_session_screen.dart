import 'package:flutter/material.dart';
import 'package:medic_app_screens/components/down_bar.dart';
import 'package:medic_app_screens/components/upper_bar.dart';

import '../../colors.dart';

import 'sleep_statistic.dart';
import 'sleep_session_card.dart';


// ignore: must_be_immutable
class SleepSessionScreen extends StatelessWidget {
  TextStyle titleTextStyle = const TextStyle(
      color: customTextGrey700Color, fontWeight: FontWeight.w700, fontSize: 33);


  SleepSessionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        UpperBar(),
        Expanded(
            child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sleep Session', style: titleTextStyle),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SleepSessionCard(Theme.of(context).colorScheme.secondary,
                      '5h 30m', 'Sleep', 'assets/icons/moon.png'),
                  SleepSessionCard(Theme.of(context).colorScheme.primary,
                      '1h 10m', 'Deep', 'assets/icons/halfss.png'),
                  SleepSessionCard(Theme.of(context).colorScheme.secondary,
                      '3h 30m', 'Quality', 'assets/icons/star.png'),
                ],
              ),
              const SizedBox(height: 20),
              Text(
                'Bedtime',
                style: titleTextStyle,
              ),
              const SizedBox(height: 30),
              const SleepStatistic(),
            ],
          ),
        )),
        DownBar()
      ],
    ));
  }
}
