import 'package:flutter/material.dart';
import 'package:volyaApp/models/fairytales.dart';
import 'package:volyaApp/shared.dart';
import 'package:volyaApp/widgets/fairytales/audio_player_button.dart';

class FairytalesAudioPlayerScreen extends StatelessWidget {
  // static const routeName = '/audio_player_screen';
  final Fairytale fairytale;

  const FairytalesAudioPlayerScreen({Key key, this.fairytale})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarFairytalesAudioPlayerScreen,
        title: Center(
          child: Text(
            fairytale.title,
            style: FontsStyles.appBarFairytalesAudioPlayerScreen,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Image.asset(
            fairytale.image,
            fit: BoxFit.cover,
          ),
          AudioPlayerButtons(fairytale: fairytale),
        ],
      ),
    );
  }
}
