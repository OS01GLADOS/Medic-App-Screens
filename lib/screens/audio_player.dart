import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic_app_screens/components/down_bar.dart';
import 'package:medic_app_screens/components/upper_bar.dart';

double TextSize = 20;
double MainTextSize = 35;

double a = 300;

class audioVisualizer extends StatelessWidget{

  late Color? color;
  double height = 20;

  audioVisualizer(color_in, height_in){
    color = color_in;
    height = height_in;
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4,
      height: height,
      margin: EdgeInsets.symmetric(horizontal: 1.5),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20)
      ),
    );
  }

}


class AudioPlayerScreen extends StatelessWidget{


  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          upper_bar(),
          Expanded(
              child: Column(
                children: [
                  Container(
                    width: a,
                    height: a,
                    margin: EdgeInsets.symmetric(vertical: 20),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('assets/images/music_cover.jpg')
                        )
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
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
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Padding(
                      padding: EdgeInsets.symmetric(vertical:20),
                      //do not open it, its ugly but it works
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        audioVisualizer(Colors.lightGreen, 20.0),
                        audioVisualizer(Colors.lightGreen, 60.0),
                        audioVisualizer(Colors.lightGreen, 45.0),
                        audioVisualizer(Colors.lightGreen, 20.0),
                        audioVisualizer(Colors.lightGreen, 60.0),
                        audioVisualizer(Colors.lightGreen, 40.0),

                        audioVisualizer(Colors.lightGreen, 20.0),
                        audioVisualizer(Colors.lightGreen, 60.0),
                        audioVisualizer(Colors.lightGreen, 40.0),

                        audioVisualizer(Colors.lightGreen, 20.0),
                        audioVisualizer(Colors.lightGreen, 60.0),
                        audioVisualizer(Colors.lightGreen, 45.0),
                        audioVisualizer(Colors.lightGreen, 20.0),
                        audioVisualizer(Colors.lightGreen, 60.0),
                        audioVisualizer(Colors.lightGreen, 40.0),

                        audioVisualizer(Colors.lightGreen, 20.0),
                        audioVisualizer(Colors.lightGreen, 60.0),
                        audioVisualizer(Colors.lightGreen, 45.0),
                        audioVisualizer(Colors.lightGreen, 20.0),
                        audioVisualizer(Colors.lightGreen, 60.0),
                        audioVisualizer(Colors.lightGreen, 40.0),

                        audioVisualizer(Colors.lightGreen, 20.0),
                        audioVisualizer(Colors.lightGreen, 60.0),
                        audioVisualizer(Colors.lightGreen, 45.0),
                        audioVisualizer(Colors.lightGreen, 20.0),
                        audioVisualizer(Colors.lightGreen, 60.0),
                        audioVisualizer(Colors.lightGreen, 40.0),

                        audioVisualizer(Colors.lightGreen[100], 20.0),
                        audioVisualizer(Colors.lightGreen[100], 60.0),
                        audioVisualizer(Colors.lightGreen[100], 45.0),
                        audioVisualizer(Colors.lightGreen[100], 20.0),
                        audioVisualizer(Colors.lightGreen[100], 60.0),
                        audioVisualizer(Colors.lightGreen[100], 40.0),


                        audioVisualizer(Colors.lightGreen[100], 20.0),
                        audioVisualizer(Colors.lightGreen[100], 60.0),
                        audioVisualizer(Colors.lightGreen[100], 45.0),
                        audioVisualizer(Colors.lightGreen[100], 20.0),
                        audioVisualizer(Colors.lightGreen[100], 60.0),
                        audioVisualizer(Colors.lightGreen[100], 40.0),

                        audioVisualizer(Colors.lightGreen[100], 20.0),
                        audioVisualizer(Colors.lightGreen[100], 60.0),
                        audioVisualizer(Colors.lightGreen[100], 45.0),
                        audioVisualizer(Colors.lightGreen[100], 20.0),
                        audioVisualizer(Colors.lightGreen[100], 60.0),
                        audioVisualizer(Colors.lightGreen[100], 40.0),
                      ],
                    )
                  ),

                  Padding(
                    padding:EdgeInsets.symmetric(horizontal: 35, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.shuffle,
                          color: Colors.grey,
                          size: 30,
                        ),
                        Icon(
                            Icons.fast_rewind,
                          color: Colors.grey,
                          size: 30,
                        ),
                        Container(
                          padding: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.grey,
                            borderRadius: BorderRadius.circular(40)
                          ),
                          child: Icon(
                            Icons.pause,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(math.pi),
                          child: Icon(
                            Icons.fast_rewind,
                            color: Colors.grey,
                            size: 30,
                          ),
                        ),
                        Icon(
                            Icons.repeat,
                          color: Colors.grey,
                          size: 30,
                        ),
                      ],
                    ),
                  )
                ],
              )
          ),
          down_bar.setActive(2)
        ],
      )
    );
  }
}