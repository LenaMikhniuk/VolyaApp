import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

import 'package:volyaApp/data.dart';
import 'package:volyaApp/widgets/music_box.dart';

import '../../shared.dart';

class MusicScreen extends StatefulWidget {
  static const routeName = '/music_screen';
  @override
  _MusicScreenState createState() => _MusicScreenState();
}

class _MusicScreenState extends State<MusicScreen> {
  AudioCache _audioCache;
  AudioPlayer _player = AudioPlayer();
  int currentIndex;

  // void _next(){
  //   if (_player.state != null) {
  //     _player.play;
  //   } else {
  //     _currentAssetPosition++;
  //     _open(_currentAssetPosition);
  //   }
  // }

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

  final controller = PageController(initialPage: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Music', style: FontsStyles.appBar),
        ),
        backgroundColor: AppColors.appBarMainColor,
      ),
      body: Container(
        color: AppColors.bodyMainColor,
        child: PageView(
            // controller: controller,
            //  onPageChanged: (value) =>
            children: [
              buildPage1(),
              buildPage2(),
            ]),
      ),
    );
  }

  GridView buildPage1() {
    return GridView.builder(
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
    );
  }

  GridView buildPage2() {
    return GridView.builder(
      padding: EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
      ),
      itemBuilder: (context, index) => MusicBox(
          image: Data.musicContainersPage2[index].image,
          sound: Data.musicContainersPage2[index].sound,
          onTap: () {
            // print('_player.state1 - ${_player.state}');
            if (_player.state == AudioPlayerState.PLAYING) {
              if (currentIndex == index) {
                setState(() {
                  _player.pause();
                });
              } else {
                _audioCache.play(Data.musicContainersPage2[index].sound);
                setState(() {
                  currentIndex = index;
                });
              }
            } else {
              _audioCache.play(Data.musicContainersPage2[index].sound);
              setState(() {
                currentIndex = index;
              });
            }
          },
          isSelected: currentIndex == index &&
              _player.state == AudioPlayerState.PLAYING),
      itemCount: Data.musicContainersPage2.length,
    );
  }
}
