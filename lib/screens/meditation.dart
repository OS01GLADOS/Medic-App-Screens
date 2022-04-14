import 'package:flutter/material.dart';
import 'package:medic_app_screens/components/down_bar.dart';
import 'package:medic_app_screens/components/upper_bar.dart';

import '../colors.dart';

double TextSize = 20;
double MainTextSize = 35;

class MeditationScreen extends StatelessWidget{
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            upper_bar(),
            Expanded(
                child:Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text(
                        'Meditation',
                        style: TextStyle(
                          fontSize: MainTextSize,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Guided by a short introductory course,',
                        style: TextStyle(
                            fontSize: TextSize,
                            color: customTextGreyColor
                      ),
                      ),
                      Text('start trying meditation.',
                        style: TextStyle(
                            fontSize: TextSize,
                            color: customTextGreyColor
                        ),
                      ),

                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 15),
                        child: Image(
                            height: 250,
                            image: AssetImage('assets/images/meditation.png')
                        ),
                      ),

                      Text('45:00', style: TextStyle(
                          fontSize: MainTextSize,
                          color: customTextGreyColor
                      ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left :80, right: 80, top: 10),
                        padding: EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.all(Radius.circular(10))
                        ),
                        alignment: Alignment.center,
                        child: Text(
                            'Start Now',
                            style: TextStyle(
                            fontSize: TextSize,
                                color: customColorScheme.background
                        ),
                        ),
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