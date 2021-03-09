import 'package:flutter/material.dart';
import 'package:volyaApp/models/fairytales_models/fairytales.dart';

import 'package:volyaApp/shared.dart';
import 'package:volyaApp/widgets/fairytales/audio_player_button.dart';

class FairytalesAudioPlayerScreen extends StatelessWidget {
  static const routeName = '/fairytaileAudioPlayerScreen';

  final Fairytale fairytale;
  final bool isGoingBack;

  const FairytalesAudioPlayerScreen({Key key, this.fairytale, this.isGoingBack})
      : super(key: key);

  Size displaySize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  double displayHeight(BuildContext context) {
    return displaySize(context).height;
  }

  double displayWidth(BuildContext context) {
    return displaySize(context).width;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(
          color: AppColors.appBarTextColorFairytaleScreen,
        ),
        shadowColor: AppColors.appBarShadowColor,
        backgroundColor: AppColors.appBarFairytalesAudioPlayerScreen,
        title: FittedBox(
          fit: BoxFit.cover,
          child: Text(
            fairytale.title,
            style: FontsStyles.appBarFairytalesAudioPlayerScreen,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                while (Navigator.canPop(context)) {
                  Navigator.of(context).pop();
                }
              }),
        ],
      ),
      body: Container(
        color: AppColors.audioplayerScreenMainColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Hero(
              tag: fairytale.image,
              child: Container(
                height: displayHeight(context) * 0.52,
                child: Image.asset(
                  fairytale.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            AudioPlayerButtons(fairytale: fairytale, isGoingBack: isGoingBack),
          ],
        ),
      ),
    );
  }
}
