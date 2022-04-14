import 'package:flutter/material.dart';
import 'screens/audio/list/audio_list_screen.dart';
import 'screens/audio/player/audio_player_screen.dart';
import 'screens/authentication/login_screen.dart';
import 'screens/authentication/register_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/meditation/meditation_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/sleep/sleep_session_screen.dart';
import 'screens/tools/tools_screen.dart';

class ScreensDemo extends StatelessWidget {
  const ScreensDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          children: <Widget>[
            LoginScreen(),
            RegisterScreen(),
            const HomeScreen(),
            const AudioPlayerScreen(),
            const AudioListScreen(),
            const ProfileScreen(),
            MeditationScreen(),
            const ToolsScreen(),
            SleepSessionScreen()
          ],
        )
    );
  }
}