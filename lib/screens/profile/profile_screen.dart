import 'package:flutter/material.dart';
import 'package:medic_app_screens/components/down_bar.dart';
import 'package:medic_app_screens/components/profile_upper_bar.dart';
import 'package:medic_app_screens/components/round_image.dart';
import '../../colors.dart';
import '../../components/pic_labels.dart';
import 'profile_tab.dart';
import 'stats_fl.dart';

double a = 200;

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        ProfileUpperBar(),
        Expanded(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: RoundImage('assets/images/patrik.jpg', a),
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: PicLabels('Afreen Khan', 'Lucknow, India')),
            Container(
              padding: const EdgeInsets.only(top: 10, bottom: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProfileTab('STATS', Theme.of(context).colorScheme.primary),
                  ProfileTab('ACHIEVEMENTS', customColorScheme.onSurface)
                ],
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'This Week’s Stats',
                          style: TextStyle(
                              color: Theme.of(context).colorScheme.onSurface,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Show All',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              color: Theme.of(context).colorScheme.primary),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    const BarChartSample2(),
                  ],
                ))
          ],
        )),
        DownBar.setActive(3)
      ],
    ));
  }
}
