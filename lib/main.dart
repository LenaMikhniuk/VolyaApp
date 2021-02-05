import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:volyaApp/audioplayer/fairytales_history.dart';
import 'package:volyaApp/screen/tabs/music_screen.dart';
import 'package:volyaApp/screen/home.dart';

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
    return ChangeNotifierProvider(
      create: (context) => FairytalesHistory(),
      child: MaterialApp(
        home: Home(),
        routes: {
          MusicScreen.routeName: (context) => MusicScreen(),
          // FairytalesAudioPlayerScreen.routeName: (context) =>
          //FairytalesAudioPlayerScreen(),
        },
      ),
    );
  }
}
