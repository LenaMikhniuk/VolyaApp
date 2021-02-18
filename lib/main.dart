import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:volyaApp/screens/music_screen.dart';
import 'package:volyaApp/screens/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown]).then(
    (value) => runApp(
      MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('fr', 'FR'),
      ],
      home: Home(),
      routes: {
        MusicScreen.routeName: (context) => MusicScreen(),
        // FairytalesAudioPlayerScreen.routeName: (context) =>
        //FairytalesAudioPlayerScreen(),
      },
    );
  }
}
