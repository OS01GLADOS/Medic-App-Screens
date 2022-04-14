import 'package:flutter/material.dart';
import 'package:medic_app_screens/components/down_bar.dart';
import 'package:medic_app_screens/components/profile_upper_bar.dart';
import 'package:medic_app_screens/screens/profile/stats_data.dart';
import '../../colors.dart';
import '../../constants.dart';
import 'stats.dart';
import 'stats_chart.dart';

double a = 200;

class ProfileScreen extends StatefulWidget{

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<Stats> data = profileData;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            ProfileUpperBar(),
            Expanded(
                child: Column(
                  children: [
                    Container(
                      width: a,
                      height: a,
                      margin: const EdgeInsets.only(bottom: 15),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/images/patrik.jpg')
                          )
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Text(
                            'Afreen Khan',
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: mainTextSize * 0.85
                            ),
                          ),
                          Text(
                            'Lucknow, India',
                            style: TextStyle(
                              fontSize: textSize,
                              color: customTextGreyColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(top: 10, bottom:25),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.5,
                            padding: const EdgeInsets.only(bottom: 7),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(width: 5.0, color: Theme.of(context).colorScheme.primary),
                              ),
                            ),
                            child: Text(
                                'STATS',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).colorScheme.primary
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.only(bottom: 7),
                            width: MediaQuery.of(context).size.width * 0.5,
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(width: 5.0, color: customColorScheme.onSurface),
                              ),
                            ),
                            child: Text(
                                'ACHIEVEMENTS',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: customColorScheme.onSurface
                              ),
                            ),
                          )
                        ],
                      ),

                    ),

                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child:
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text('This Week’s Stats',
                              style: TextStyle(
                                fontWeight: FontWeight.bold
                              ),),
                              Text('Show All',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: Theme.of(context).colorScheme.primary
                              ),)
                            ],
                          ),
                          StatsChart(
                              data: data
                          ),
                        ],
                      )

                    )
                  ],
                )
            ),
            DownBar.setActive(3)
          ],
        )
    );
  }
}