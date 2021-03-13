import 'dart:math';

import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:volyaApp/data.dart';
import 'package:volyaApp/screens/auth/log_out.dart';
import 'package:volyaApp/widgets/music_box.dart';

import '../shared.dart';

class MusicScreen extends StatefulWidget {
  static const routeName = '/music_screen';
  @override
  _MusicScreenState createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  AudioCache _audioCache;
  AudioPlayer _player = AudioPlayer();
  int currentIndex;

  @override
  void initState() {
    super.initState();
    _audioCache = AudioCache(fixedPlayer: _player);
    _player.onPlayerStateChanged.listen((AudioPlayerState state) {
      if (state == AudioPlayerState.COMPLETED) {
        if (currentIndex + 1 < Data.musicContainers.length) {
          final nextTrackIndex =
              Random().nextInt(Data.musicContainers.length - 1);
          _audioCache
              .play(Data.musicContainers[nextTrackIndex].sound)
              .then((_) => setState(() {
                    currentIndex = nextTrackIndex;
                  }));
        }
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _audioCache.clearCache();
    _player.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: LogOut(),
      appBar: AppBar(
        centerTitle: true,
        title: Center(
          child: Text('Music',
              style: FontsStyles.baseStyleLight.copyWith(fontSize: 50)),
        ),
        backgroundColor: AppColors.primaryColor,
        shadowColor: AppColors.primaryColor,
      ),
      body: Container(
        color: AppColors.backgroundColor,
        child: GridView.builder(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) => MusicBox(
              image: Data.musicContainers[index].image,
              sound: Data.musicContainers[index].sound,
              onTap: () async {
                if (_player.state == AudioPlayerState.PLAYING &&
                    currentIndex == index) {
                  setState(() {
                    _player.pause();
                  });
                } else {
                  await _audioCache.play(Data.musicContainers[index].sound);
                  setState(() {
                    currentIndex = index;
                  });
                }
              },
              isSelected: currentIndex == index &&
                  _player.state == AudioPlayerState.PLAYING),
          itemCount: Data.musicContainers.length,
        ),
      ),
    );
  }
}
