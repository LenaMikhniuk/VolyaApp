import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:volyaApp/screens/fairytales/fairytale_screen.dart';
import 'package:volyaApp/screens/fairytales/fairytales_audioplayer_screen.dart';
import 'package:volyaApp/screens/music_screen.dart';
import 'package:volyaApp/screens/home.dart';

import 'screens/auth/auth_screen.dart';

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
      home: AuthScreen(),
      routes: {
        MusicScreen.routeName: (context) => MusicScreen(),
        FairytaleScreen.routeName: (context) => FairytaleScreen(),
        FairytalesAudioPlayerScreen.routeName: (context) =>
            FairytalesAudioPlayerScreen(),
      },
    );
  }
}
