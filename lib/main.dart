import 'package:flutter/material.dart';
import 'package:volyaApp/screen/fairytales/fairytales_audioplayer_screen.dart';
import 'package:volyaApp/screen/tabs/music_screen.dart';
import 'package:volyaApp/screen/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: {
        MusicScreen.routeName: (context) => MusicScreen(),
        // FairytalesAudioPlayerScreen.routeName: (context) =>
        //FairytalesAudioPlayerScreen(),
      },
    );
  }
}
