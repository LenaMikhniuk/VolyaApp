import 'package:flutter/material.dart';
import 'package:volyaApp/screen/music_screen.dart';
import 'package:volyaApp/screen/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
    );
  }
}
