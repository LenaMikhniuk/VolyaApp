import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:audioplayers/audio_cache.dart';

class MusicBox extends StatefulWidget {
  final String image;
  final String sound;
  final Function onTap;
  final bool isSelected;

  MusicBox({
    this.image,
    this.sound,
    this.onTap,
    this.isSelected,
  });

  @override
  _MusicBoxState createState() => _MusicBoxState();
}

class _MusicBoxState extends State<MusicBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          decoration: BoxDecoration(
              // borderRadius: BorderRadius.circular(10),
              color: Colors.pink),
          child: Padding(
            padding:
                widget.isSelected ? EdgeInsets.all(3.0) : EdgeInsets.all(0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
