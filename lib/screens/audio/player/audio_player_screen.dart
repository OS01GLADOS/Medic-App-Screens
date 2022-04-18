import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic_app_screens/components/down_bar.dart';
import 'package:medic_app_screens/components/round_image.dart';
import 'package:medic_app_screens/components/upper_bar.dart';
import 'package:medic_app_screens/components/pic_labels.dart';

import '../../../colors.dart';
import 'audio_visualizer.dart';
import 'player_control_button.dart';

const double a = 300;

class AudioPlayerScreen extends StatelessWidget{
  const AudioPlayerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          UpperBar(),
          Expanded(
              child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                    child:  RoundImage('assets/images/music_cover.jpg', a),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: PicLabels.leftSide('Painting Forest', 'By: Painting with Passion'),
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
                        PlayerControlButton( Icons.shuffle, customColorScheme.onSurface),
                        PlayerControlButton( Icons.fast_rewind, customColorScheme.onSurface),
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: customColorScheme.onSurface,
                            borderRadius: BorderRadius.circular(40)
                          ),
                          child:
                          PlayerControlButton(  Icons.pause, customColorScheme.background,)
                        ),
                        Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(math.pi),
                          child:
                          PlayerControlButton( Icons.fast_rewind, customColorScheme.onSurface)
                        ),
                        PlayerControlButton( Icons.repeat, customColorScheme.onSurface)
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