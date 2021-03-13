import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:volyaApp/models/fairytales_models/fairytales.dart';
import 'package:volyaApp/screens/fairytales/fairytales_audioplayer_screen.dart';

import 'package:volyaApp/shared.dart';

import 'package:volyaApp/widgets/fairytales/fairytales_data.dart';

class AudioPlayerButtons extends StatefulWidget {
  final Fairytale fairytale;
  final bool isGoingBack;

  const AudioPlayerButtons({Key key, this.fairytale, this.isGoingBack = false})
      : super(key: key);
  @override
  _AudioPlayerButtonsState createState() => _AudioPlayerButtonsState();
}

class _AudioPlayerButtonsState extends State<AudioPlayerButtons> {
  AudioCache _audioCache;
  AudioPlayer _player;

  Duration _duration = new Duration();
  Duration _position = new Duration();

  @override
  void initState() {
    super.initState();
    _player = AudioPlayer();
    _audioCache = AudioCache(fixedPlayer: _player);

    _player.onDurationChanged.listen((Duration d) {
      setState(() {
        _duration = d;
      });
    });
    _player.onAudioPositionChanged.listen((Duration p) {
      setState(() {
        _position = p;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _audioCache.clearCache();
    _player.dispose();
  }

  void seekToSecond(int second) {
    Duration newDuration = Duration(seconds: second);

    _player.seek(newDuration);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Button(
            onTap: () {
              Navigator.of(context).pop();
            },
            icon: Icons.skip_previous,
          ),
          SizedBox(
            width: 20,
          ),
          Button(
            onTap: () async {
              if (_player.state == AudioPlayerState.PLAYING) {
                await _player.pause();
                setState(() {});
              } else {
                await _audioCache.play(widget.fairytale.sound);
                setState(() {});
              }
            },
            icon: _player.state == AudioPlayerState.PLAYING
                ? Icons.pause
                : Icons.play_arrow,
          ),
          SizedBox(
            width: 20,
          ),
          Button(
            onTap: () {
              int randomIndex;

              while (randomIndex == null ||
                  FairytalesData.fairytales.indexOf(widget.fairytale) ==
                      randomIndex) {
                randomIndex =
                    Random().nextInt(FairytalesData.fairytales.length);
              }

              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => FairytalesAudioPlayerScreen(
                    fairytale: FairytalesData.fairytales[randomIndex],
                  ),
                ),
              );
            },
            icon: Icons.skip_next,
          ),
        ]),
        SizedBox(
          height: 30,
        ),
        Slider(
            activeColor: AppColors.secondaryColor,
            inactiveColor: AppColors.textColorLight,
            value: _position.inSeconds.toDouble(),
            min: 0.0,
            max: _duration.inSeconds.toDouble(),
            onChanged: (double value) {
              setState(() {
                seekToSecond(value.toInt());
                value = value;
              });
            }),
      ],
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key key,
    @required this.onTap,
    @required this.icon,
  }) : super(key: key);

  final Function onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70,
        width: 70,
        decoration: ButtonBoxDecoration.boxDecoration
            .copyWith(color: AppColors.textColorLight),
        child: Icon(
          icon,
          size: 70,
          color: AppColors.secondaryColor,
        ),
      ),
    );
  }
}
