import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic_app_screens/components/down_bar.dart';
import 'package:medic_app_screens/components/upper_bar.dart';

double TextSize = 20;
double MainTextSize = 35;

class audio_item_widget extends StatelessWidget{

  String image = '';
  String title = '';
  int length = 0;
  int listeners = 0;

  audio_item_widget(this.image, this.title, this.length, this.listeners);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.only(right: 30),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(image)
              )
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[900]
                ),
              ),
              SizedBox(height: 8),
              Text(listeners.toString()+ ' listeners',
                style: TextStyle(
                    color: Colors.grey
                ),
              )
            ],
          ),
          Spacer(),
          Text(
            length.toString() + ' Min',
            style: TextStyle(
                color: Colors.grey
            ),
          )
        ],
      ),
    );
  }

}

class AudioListScreen extends StatelessWidget{
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          upper_bar(),
          Expanded(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(left: 20, top: 40, bottom: 20),
                    margin: EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
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
                            color: Colors.white,
                            fontSize: MainTextSize
                          ),
                        ),
                        Container(
                          width: 220,
                          child: Text(
                            'Sometimes the most productive thing you can do is relax.',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: TextSize * 0.75
                            ),
                          ),
                        ),

                        Container(
                          alignment: Alignment.center,
                          width: 150,
                          margin: EdgeInsets.only(top:20),
                          padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text ('play now',
                                style: TextStyle(
                                    fontSize: TextSize * 0.8,
                                ),
                              ),
                              Image(
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
                    margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                    child: Column(
                      children: [
                        audio_item_widget(
                            'assets/images/music_cover.jpg',
                            'Painting Forest',
                            28,
                            59899
                        ),
                        audio_item_widget(
                            'assets/images/cover1.png',
                            'Mountaineers',
                            20,
                            59899
                        ),
                        audio_item_widget(
                            'assets/images/cover2.jpg',
                            'Lovely Deserts',
                            12,
                            59899
                        ),
                        audio_item_widget(
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
          down_bar.setActive(2)
        ],
      )
    );
  }
}