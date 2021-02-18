import 'package:flutter/material.dart';
import 'package:volyaApp/models/fairytales_models/fairytales.dart';
import 'package:volyaApp/screens/fairytales/fairytales_audioplayer_screen.dart';

class FairytalesItem extends StatelessWidget {
  final Fairytale fairytale;

  const FairytalesItem({Key key, this.fairytale}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => FairytalesAudioPlayerScreen(
              fairytale: fairytale,
            ),
          ),
        );
      },
      //splashColor: AppColors.selectedItemColor,
      child: Hero(
          tag: fairytale.image,
          child: Container(
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.elliptical(90, 45)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  offset: const Offset(0.0, 5.0),
                  blurRadius: 10.0,
                  spreadRadius: 1.0,
                )
              ],
            ),
            child: ClipOval(
              child: Image.asset(
                fairytale.image,
                fit: BoxFit.fill,
              ),
            ),
          )),
    );
  }
}
