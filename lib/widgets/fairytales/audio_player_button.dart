import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:volyaApp/models/fairytales.dart';
import 'package:volyaApp/screen/fairytales/fairytales_audioplayer_screen.dart';
import 'package:volyaApp/shared.dart';
import 'package:volyaApp/widgets/fairytales/fairytales_data.dart';

class AudioPlayerButtons extends StatefulWidget {
  final Fairytale fairytale;
  //final String sound;

  //const AudioPlayerButtons({Key key, this.sound}) : super(key: key);

  const AudioPlayerButtons({Key key, this.fairytale}) : super(key: key);
  @override
  _AudioPlayerButtonsState createState() => _AudioPlayerButtonsState();
}

class _AudioPlayerButtonsState extends State<AudioPlayerButtons> {
  AudioCache _audioCache;
  AudioPlayer _player = AudioPlayer();
  int currentIndex;

  @override
  void initState() {
    super.initState();
    _audioCache = AudioCache(fixedPlayer: _player);
  }

  @override
  void dispose() {
    super.dispose();
    _audioCache.clearCache();
    _player.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      GestureDetector(
        onTap: () {},
        child: Container(
          height: 70,
          width: 70,
          decoration: ButtonBoxDecoration.boxDecoration,
          child: Icon(
            Icons.skip_previous,
            size: 70,
            color: AppColors.iconButtonColor,
          ),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      GestureDetector(
        onTap: () async {
          if (_player.state == AudioPlayerState.PLAYING) {
            await _player.pause();
            setState(() {});
          } else {
            await _audioCache.play(widget.fairytale.sound);
            setState(() {});
          }
        },
        child: Container(
          height: 70,
          width: 70,
          decoration: ButtonBoxDecoration.boxDecoration,
          child: _getIconFromState(_player.state),
        ),
      ),
      SizedBox(
        width: 20,
      ),
      GestureDetector(
        onTap: () {
          int randomIndex;

          while (randomIndex == null ||
              FairytalesData.fairytales.indexOf(widget.fairytale) ==
                  randomIndex) {
            randomIndex = Random().nextInt(FairytalesData.fairytales.length);
          }
          print(randomIndex);

          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) => FairytalesAudioPlayerScreen(
                fairytale: FairytalesData.fairytales[randomIndex],
              ),
            ),
          );
        },
        child: Container(
          height: 70,
          width: 70,
          decoration: ButtonBoxDecoration.boxDecoration,
          child: Icon(
            Icons.skip_next,
            size: 70,
            color: AppColors.iconButtonColor,
          ),
        ),
      ),
    ]);
  }
}

Widget _getIconFromState(AudioPlayerState state) {
  if (state == AudioPlayerState.PLAYING) {
    return Icon(Icons.pause);
  } else {
    return Icon(Icons.play_arrow);
  }
}
