import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:medic_app_screens/components/down_bar.dart';
import 'package:medic_app_screens/components/upper_bar.dart';

double TextSize = 20;
double MainTextSize = 35;

class mood_selection_widget extends StatelessWidget{
  String icon = '';
  String title = '';

  mood_selection_widget(String i, String t){
     icon = i;
     title = t;
  }

  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Image(
              width: 40,
              height: 40,
              image: AssetImage(icon),
            ),
          ),
          Text(
            title,
            style: TextStyle(
              color: Colors.grey
            ),
          )
        ],
      ),
    );
  }
}

class meditaion_card extends StatelessWidget{

  String image = '';
  String title = '';
  String text = '';

  meditaion_card(i, t, tt){
    image = i;
    title = t;
    text = tt;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      height: 160,
      decoration: BoxDecoration(
          color: Colors.grey[300],
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
            image: AssetImage(image),
            alignment: Alignment(0.95, 0),
          ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: MainTextSize * 0.7,
              color: Colors.lightGreen,
              fontWeight: FontWeight.w600
            ),
          ),
          Container(
            width: 250,
            child: Text(
              text,
              style: TextStyle(
                  fontSize: TextSize * 0.8,
                  color: Colors.grey[600]
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 150,
            margin: EdgeInsets.only(top:10),
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text ('Watch Now',
                  style: TextStyle(
                      fontSize: TextSize * 0.8,
                    color: Colors.white
                  ),
                ),
                Image(
                  image: AssetImage('assets/icons/play.png'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget{
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: [
            upper_bar(),
            Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
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
                        padding: EdgeInsets.only(top: 5, bottom: 15),
                        child:  Text('How are you feeling today ?',
                          style: TextStyle(
                            fontSize: TextSize,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          mood_selection_widget('assets/icons/mood/calm.png', 'Calm'),
                          mood_selection_widget('assets/icons/mood/relax.png', 'Relax'),
                          mood_selection_widget('assets/icons/mood/focus.png', 'Focus'),
                          mood_selection_widget('assets/icons/mood/anxious.png', 'Anxious'),
                        ],
                      ),
                      Column(
                        children: [
                          meditaion_card('assets/images/mi2.png', 'Meditation 101', 'Techniques, Benefits, and a Beginner’s How-To'),
                          meditaion_card('assets/images/mi1.png', 'Cardio Meditation', 'Basics of Yoga for Beginners or Experienced Professionals')
                        ],
                      )
                    ],
                  ),
                )

            ),
            down_bar.setActive(1)
          ],
        )
    );
  }
}