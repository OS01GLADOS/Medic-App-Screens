import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic_app_screens/components/down_bar.dart';
import 'package:medic_app_screens/components/upper_bar.dart';

import '../../../colors.dart';
import 'audio_item_widget.dart';

double TextSize = 20;
double MainTextSize = 35;

class AudioListScreen extends StatelessWidget{
  const AudioListScreen({Key? key}) : super(key: key);

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
                    width: double.infinity,
                    padding: const EdgeInsets.only(left: 20, top: 40, bottom: 20),
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                      image: DecorationImage(
                        image:  AssetImage('assets/images/Rect_cover.jpg'),
                        fit: BoxFit.fill,
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Relax Sounds ',
                          style: TextStyle(
                            color: customColorScheme.background,
                            fontSize: MainTextSize
                          ),
                        ),
                        SizedBox(
                          width: 220,
                          child: Text(
                            'Sometimes the most productive thing you can do is relax.',
                            style: TextStyle(
                                color: customColorScheme.background,
                                fontSize: TextSize * 0.75
                            ),
                          ),
                        ),

                        Container(
                          alignment: Alignment.center,
                          width: 150,
                          margin: const EdgeInsets.only(top:20),
                          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                          decoration: BoxDecoration(
                            color: customColorScheme.background,
                            borderRadius: const BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text ('play now',
                                style: TextStyle(
                                    fontSize: TextSize * 0.8,
                                ),
                              ),
                              const Image(
                                image: AssetImage('assets/icons/play_n.png'),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Column(
                      children: [
                        AudioItemWidget(
                            'assets/images/music_cover.jpg',
                            'Painting Forest',
                            28,
                            59899
                        ),
                        AudioItemWidget(
                            'assets/images/cover1.png',
                            'Mountaineers',
                            20,
                            59899
                        ),
                        AudioItemWidget(
                            'assets/images/cover2.jpg',
                            'Lovely Deserts',
                            12,
                            59899
                        ),
                        AudioItemWidget(
                            'assets/images/cover3.jpg',
                            'The Hill Sides',
                            33,
                            3333
                        )
                      ],
                    ),
                  )
                ],
              ),
          ),
          DownBar.setActive(2)
        ],
      )
    );
  }
}