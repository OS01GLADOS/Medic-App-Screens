import 'package:flutter/material.dart';
import 'package:medic_app_screens/screens/sleepSession.dart';
import 'package:medic_app_screens/screens/audio_list.dart';
import 'package:medic_app_screens/screens/audio_player.dart';
import 'package:medic_app_screens/screens/home.dart';
import 'package:medic_app_screens/screens/login.dart';
import 'package:medic_app_screens/screens/meditation.dart';
import 'package:medic_app_screens/screens/profile.dart';
import 'package:medic_app_screens/screens/register.dart';
import 'package:medic_app_screens/screens/tools.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,

      ),
      home: ScreensDemo(),
    );
  }
}

class ScreensDemo extends StatelessWidget{
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          children: <Widget>[
            LoginScreen(),
            RegisterScreen(),
            HomeScreen(),
            AudioPlayerScreen(),
            AudioListScreen(),
            ProfileScreen(),
            MeditationScreen(),
            ToolsScreen(),
            SleepSessionScreen()
          ],
        )
    );
  }
}