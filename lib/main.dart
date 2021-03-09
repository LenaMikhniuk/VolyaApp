import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:volyaApp/screens/fairytales/fairytale_screen.dart';
import 'package:volyaApp/screens/fairytales/fairytales_audioplayer_screen.dart';
import 'package:volyaApp/screens/music_screen.dart';
import 'package:volyaApp/screens/home.dart';

import 'screens/auth/auth_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
