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
  final int previousIndex;
  //final String sound;

  //const AudioPlayerButtons({Key key, this.sound}) : super(key: key);

  const AudioPlayerButtons({Key key, this.fairytale, this.previousIndex})
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
              if (widget.previousIndex != null) {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => FairytalesAudioPlayerScreen(
                      fairytale:
                          FairytalesData.fairytales[widget.previousIndex],
                    ),
                  ),
                );
              }
            },
            icon: Icons.skip_previous,
            isActive: widget.previousIndex != null,
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
            isActive: true,
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

              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => FairytalesAudioPlayerScreen(
                    fairytale: FairytalesData.fairytales[randomIndex],
                    previousIndex:
                        FairytalesData.fairytales.indexOf(widget.fairytale),
                  ),
                ),
              );
            },
            icon: Icons.skip_next,
            isActive: true,
          ),
        ]),
        SizedBox(
          height: 70,
        ),
        Slider(
            activeColor: AppColors.sliderActiveColor,
            inactiveColor: AppColors.sliderInActiveColor,
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
    this.isActive,
  }) : super(key: key);

  final Function onTap;
  final IconData icon;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70,
        width: 70,
        decoration: ButtonBoxDecoration.boxDecoration.copyWith(
          color: isActive
              ? AppColors.buttonColor
              : AppColors.buttonColor.withOpacity(0.3),
        ),
        child: Icon(
          icon,
          size: 70,
          color: isActive
              ? AppColors.iconButtonColor
              : AppColors.iconButtonColor.withOpacity(0.3),
        ),
      ),
    );
  }
}
