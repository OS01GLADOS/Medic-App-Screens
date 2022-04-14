import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic_app_screens/components/down_bar.dart';
import 'package:medic_app_screens/components/upper_bar.dart';

double TextSize = 20;
double MainTextSize = 35;

class tools_item extends StatelessWidget{

  String text = '';
  String icon = '';

  tools_item(t, i){
    text = t;
    icon = i;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 140,
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.only(left: 15, bottom: 25),
      decoration: BoxDecoration(
          color: Colors.lightGreen,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          image: DecorationImage(
            image: AssetImage("assets/images/tool_bgr.png"),
            alignment: Alignment(0, 1.05),
          ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,

        children: [
          Image(
            width: 35,
            height: 35,
            image: AssetImage(icon),
          ),
          Padding(
            padding: EdgeInsets.only(top:5),
            child:           Text(text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: TextSize * 0.75
              ),
            )
          )
        ],
      ),
    );
  }
}

class ToolsScreen extends StatelessWidget{
  Widget build(BuildContext context) {
    return  Column(
      children: [
        upper_bar(),
        Expanded(
          child:Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text(
                    'Tools',
                    style: TextStyle(
                        fontSize: MainTextSize,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top:25),
                      child:
                      Center(
                        child:Wrap(
                          spacing: 20,
                          children: [
                            tools_item('Mood Journal', 'assets/icons/tools/journal.png'),
                            tools_item('Mood Booster', 'assets/icons/tools/booster.png'),
                            tools_item('Positive Notes', 'assets/icons/tools/p_notes.png'),
                            tools_item('Trigger Plan', 'assets/icons/tools/plan.png'),
                            tools_item('Goal Trainer', 'assets/icons/tools/flag.png'),
                          ],
                        ),
                        )

                  ),
                ]
            ),
          ),
        ),
        down_bar()
      ],
    );
  }
}