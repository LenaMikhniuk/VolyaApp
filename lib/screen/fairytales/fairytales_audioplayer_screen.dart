import 'package:flutter/material.dart';
import 'package:volyaApp/models/fairytales.dart';
import 'package:volyaApp/shared.dart';
import 'package:volyaApp/widgets/fairytales/audio_player_button.dart';

class FairytalesAudioPlayerScreen extends StatelessWidget {
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
        backgroundColor: AppColors.appBarFairytalesAudioPlayerScreen,
        title: FittedBox(
          fit: BoxFit.cover,
          child: Text(
            fairytale.title,
            style: FontsStyles.appBarFairytalesAudioPlayerScreen,
          ),
        ),
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
              height: 20,
            ),
            AudioPlayerButtons(fairytale: fairytale, isGoingBack: isGoingBack),
          ],
        ),
      ),
    );
  }
}
