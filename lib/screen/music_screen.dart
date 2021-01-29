import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volyaApp/data.dart';
import 'package:volyaApp/models/music_container.dart';
import 'package:volyaApp/widgets/music_box.dart';

class MusicScreen extends StatefulWidget {
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
      appBar: AppBar(
        title: Center(
          child: Text(
            'Music',
            style: GoogleFonts.overpass(
              color: Colors.white,
              fontSize: 45,
              //fontWeight: FontWeight.bold,
            ),
          ),
        ),
        backgroundColor: Colors.indigo[200],
      ),
      body: Container(
        color: Colors.purple[100],
        child: (GridView.builder(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemBuilder: (context, index) => MusicBox(
              image: Data.musicContainer[index].image,
              sound: Data.musicContainer[index].sound,
              onTap: () {
                // print('_player.state1 - ${_player.state}');
                if (_player.state == AudioPlayerState.PLAYING) {
                  if (currentIndex == index) {
                    setState(() {
                      _player.pause();
                    });
                  } else {
                    _audioCache.play(Data.musicContainer[index].sound);
                    setState(() {
                      currentIndex = index;
                    });
                  }
                } else {
                  _audioCache.play(Data.musicContainer[index].sound);
                  setState(() {
                    currentIndex = index;
                  });
                }
              },
              isSelected: currentIndex == index &&
                  _player.state == AudioPlayerState.PLAYING),
          itemCount: Data.musicContainer.length,
        )),
      ),
    );
  }
}
