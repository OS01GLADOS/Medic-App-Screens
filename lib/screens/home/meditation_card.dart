import 'package:flutter/material.dart';
import '../../colors.dart';

double TextSize = 20;
double MainTextSize = 35;

// ignore: must_be_immutable
class MeditationCard extends StatefulWidget{

  String image = '';
  String title = '';
  String text = '';

  MeditationCard(i, t, tt, {Key? key}) : super(key: key){
    image = i;
    title = t;
    text = tt;
  }

  @override
  State<MeditationCard> createState() => _MeditationCardState();
}

class _MeditationCardState extends State<MeditationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      height: 160,
      decoration: BoxDecoration(
        color: customGrey,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
        image: DecorationImage(
          image: AssetImage(widget.image),
          alignment: const Alignment(0.95, 0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(
                fontSize: MainTextSize * 0.7,
                color: customColorScheme.secondary,
                fontWeight: FontWeight.w600
            ),
          ),
          SizedBox(
            width: 250,
            child: Text(
              widget.text,
              style: TextStyle(
                  fontSize: TextSize * 0.8,
                  color: customColorScheme.onSurface
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: 150,
            margin: const EdgeInsets.only(top:10),
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text ('Watch Now',
                  style: TextStyle(
                      fontSize: TextSize * 0.8,
                      color: Theme.of(context).colorScheme.background
                  ),
                ),
                const Image(
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