import 'package:flutter/material.dart';
import 'package:medic_app_screens/components/down_bar.dart';
import 'package:medic_app_screens/components/upper_bar.dart';

import '../../colors.dart';
import '../../constants.dart';

const defaultTextStyle = TextStyle(
    fontSize: textSize,
    color: customTextGreyColor
);

class MeditationScreen extends StatelessWidget{
  MeditationScreen({Key? key}) : super(key: key);

  var screen_height;
  var screen_width;

  @override
  Widget build(BuildContext context) {

    screen_height = MediaQuery.of(context).size.height;
    screen_width = MediaQuery.of(context).size.width;

    return Center(
        child: Column(
          children: [
            UpperBar(),
            Expanded(
                child:Container(
                  width: double.infinity,
                  margin: EdgeInsets.symmetric(
                      horizontal: screen_width * 0.05
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: screen_height*0.01),
                      const Text(
                        'Meditation',
                        style: TextStyle(
                          fontSize: mainTextSize,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: screen_height*0.01),
                      const Text(
                        'Guided by a short introductory course,',
                        style: defaultTextStyle
                      ),
                      const Text('start trying meditation.',
                        style: defaultTextStyle
                      ),
                      SizedBox(height: screen_height*0.02),
                       Image(
                          height: screen_height*0.4,
                          image: AssetImage('assets/images/meditation.png')
                      ),
                      SizedBox(height: screen_height*0.03),
                      const Text('45:00', style: TextStyle(
                          fontSize: mainTextSize,
                          color: customTextGreyColor
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: screen_width * 0.2, vertical:screen_height*0.01),
                        padding: EdgeInsets.symmetric(vertical: screen_height* 0.02),
                        decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: const BorderRadius.all(Radius.circular(10))
                        ),
                        alignment: Alignment.center,
                        child: Text(
                            'Start Now',
                            style: TextStyle(
                            fontSize: textSize,
                                color: customColorScheme.background
                        ),
                        ),
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