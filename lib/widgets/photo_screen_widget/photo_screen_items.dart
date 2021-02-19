import 'package:flutter/material.dart';

import 'package:volyaApp/models/photo_screen_models/photo_model.dart';

class PhotoScreenItems extends StatelessWidget {
  final Photo photoFile;
  final VoidCallback onTap;
  const PhotoScreenItems({Key key, this.photoFile, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            offset: const Offset(0.0, 0.6),
            blurRadius: 10.0,
            spreadRadius: 1.0,
          )
        ]),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.file(
            photoFile.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
