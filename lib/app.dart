import 'package:flutter/material.dart';
import 'colors.dart';
import 'screens_demo.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme:  customColorScheme
      ),
      home: const ScreensDemo(),
    );
  }
}