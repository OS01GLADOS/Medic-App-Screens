import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic_app_screens/components/down_bar.dart';
import 'package:medic_app_screens/components/upper_bar.dart';

import '../../../colors.dart';
import 'audio_visualizer.dart';

double TextSize = 20;
double MainTextSize = 35;

double a = 300;

class AudioPlayerScreen extends StatelessWidget{
  const AudioPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const UpperBar(),
          Expanded(
              child: Column(
                children: [
                  Container(
                    width: a,
                    height: a,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/music_cover.jpg')
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Painting Forest',
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: MainTextSize * 0.85
                          ),
                        ),
                        Text(
                          'By: Painting with Passion',
                          style: TextStyle(
                            fontSize: TextSize,
                            color: customTextGreyColor,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                      padding: const EdgeInsets.symmetric(vertical:20),
                      //do not open it, its ugly but it works
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        AudioVisualizer(Theme.of(context).colorScheme.primary, 20.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 60.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 45.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 20.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 60.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 40.0),

                        AudioVisualizer(Theme.of(context).colorScheme.primary, 20.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 60.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 40.0),

                        AudioVisualizer(Theme.of(context).colorScheme.primary, 20.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 60.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 45.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 20.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 60.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 40.0),

                        AudioVisualizer(Theme.of(context).colorScheme.primary, 20.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 60.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 45.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 20.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 60.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 40.0),

                        AudioVisualizer(Theme.of(context).colorScheme.primary, 20.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 60.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 45.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 20.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 60.0),
                        AudioVisualizer(Theme.of(context).colorScheme.primary, 40.0),

                        AudioVisualizer(customColorScheme.secondaryVariant, 20.0),
                        AudioVisualizer(customColorScheme.secondaryVariant, 60.0),
                        AudioVisualizer(customColorScheme.secondaryVariant, 45.0),
                        AudioVisualizer(customColorScheme.secondaryVariant, 20.0),
                        AudioVisualizer(customColorScheme.secondaryVariant, 60.0),
                        AudioVisualizer(customColorScheme.secondaryVariant, 40.0),


                        AudioVisualizer(customColorScheme.secondaryVariant, 20.0),
                        AudioVisualizer(customColorScheme.secondaryVariant, 60.0),
                        AudioVisualizer(customColorScheme.secondaryVariant, 45.0),
                        AudioVisualizer(customColorScheme.secondaryVariant, 20.0),
                        AudioVisualizer(customColorScheme.secondaryVariant, 60.0),
                        AudioVisualizer(customColorScheme.secondaryVariant, 40.0),

                        AudioVisualizer(customColorScheme.secondaryVariant, 20.0),
                        AudioVisualizer(customColorScheme.secondaryVariant, 60.0),
                        AudioVisualizer(customColorScheme.secondaryVariant, 45.0),
                        AudioVisualizer(customColorScheme.secondaryVariant, 20.0),
                        AudioVisualizer(customColorScheme.secondaryVariant, 60.0),
                        AudioVisualizer(customColorScheme.secondaryVariant, 40.0),
                      ],
                    )
                  ),

                  Padding(
                    padding:const EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.shuffle,
                          color: customColorScheme.onSurface,
                          size: 30,
                        ),
                        Icon(
                            Icons.fast_rewind,
                          color: customColorScheme.onSurface,
                          size: 30,
                        ),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: customColorScheme.onSurface,
                            borderRadius: BorderRadius.circular(40)
                          ),
                          child: Icon(
                            Icons.pause,
                            color: customColorScheme.background,
                            size: 30,
                          ),
                        ),
                        Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(math.pi),
                          child: Icon(
                            Icons.fast_rewind,
                            color: customColorScheme.onSurface,
                            size: 30,
                          ),
                        ),
                        Icon(
                            Icons.repeat,
                          color: customColorScheme.onSurface,
                          size: 30,
                        ),
                      ],
                    ),
                  )
                ],
              )
          ),
          DownBar.setActive(2)
        ],
      )
    );
  }
}