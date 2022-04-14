import 'package:flutter/material.dart';
import 'package:medic_app_screens/components/down_bar.dart';
import 'package:medic_app_screens/components/upper_bar.dart';

import 'meditation_card.dart';
import 'mood_selection_widget.dart';

double TextSize = 20;
double MainTextSize = 35;

class HomeScreen extends StatelessWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            const UpperBar(),
            Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Welcome back, Afreen!',
                        style: TextStyle(
                            fontSize: MainTextSize * 0.9,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 5, bottom: 15),
                        child:  Text('How are you feeling today ?',
                          style: TextStyle(
                            fontSize: TextSize,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          MoodSelectionWidget('assets/icons/mood/calm.png', 'Calm'),
                          MoodSelectionWidget('assets/icons/mood/relax.png', 'Relax'),
                          MoodSelectionWidget('assets/icons/mood/focus.png', 'Focus'),
                          MoodSelectionWidget('assets/icons/mood/anxious.png', 'Anxious'),
                        ],
                      ),
                      Column(
                        children: [
                          MeditationCard('assets/images/mi2.png', 'Meditation 101', 'Techniques, Benefits, and a Beginner’s How-To'),
                          MeditationCard('assets/images/mi1.png', 'Cardio Meditation', 'Basics of Yoga for Beginners or Experienced Professionals')
                        ],
                      )
                    ],
                  ),
                )

            ),
            DownBar.setActive(1)
          ],
        )
    );
  }
}