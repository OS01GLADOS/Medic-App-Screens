import 'package:flutter/material.dart';
import 'audio/list/audio_list_screen.dart';
import 'audio/player/audio_player_screen.dart';
import 'authentication/login_screen.dart';
import 'authentication/register_screen.dart';
import 'home/home_screen.dart';
import 'meditation/meditation_screen.dart';
import 'profile/profile_screen.dart';
import 'sleep/sleep_session_screen.dart';
import 'tools/tools_screen.dart';

class ScreensDemo extends StatelessWidget {
  const ScreensDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          children: <Widget>[
            const LoginScreen(),
            const RegisterScreen(),
            const HomeScreen(),
            const AudioPlayerScreen(),
            const AudioListScreen(),
            const ProfileScreen(),
            const MeditationScreen(),
            const ToolsScreen(),
            SleepSessionScreen()
          ],
        )
    );
  }
}