import 'package:flutter/material.dart';
import 'package:volyaApp/models/fairytales.dart';
import 'package:volyaApp/screen/fairytales/fairytales_audioplayer_screen.dart';
import 'package:volyaApp/shared.dart';

class FairytalesItem extends StatelessWidget {
  final Fairytale fairytale;

  const FairytalesItem({Key key, this.fairytale}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: InkWell(
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
        child: Image.asset(
          fairytale.image,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
