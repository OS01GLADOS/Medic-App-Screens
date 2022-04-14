import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medic_app_screens/components/down_bar.dart';
import 'package:medic_app_screens/components/upper_bar.dart';

import 'tools_item.dart';

double TextSize = 20;
double MainTextSize = 35;

class ToolsScreen extends StatelessWidget{
  const ToolsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const UpperBar(),
        Expanded(
          child:Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 20),
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
                      padding: const EdgeInsets.only(top:25),
                      child:
                      Center(
                        child:Wrap(
                          spacing: 20,
                          children: [
                            ToolsItem('Mood Journal', 'assets/icons/tools/journal.png'),
                            ToolsItem('Mood Booster', 'assets/icons/tools/booster.png'),
                            ToolsItem('Positive Notes', 'assets/icons/tools/p_notes.png'),
                            ToolsItem('Trigger Plan', 'assets/icons/tools/plan.png'),
                            ToolsItem('Goal Trainer', 'assets/icons/tools/flag.png'),
                          ],
                        ),
                        )

                  ),
                ]
            ),
          ),
        ),
        DownBar()
      ],
    );
  }
}