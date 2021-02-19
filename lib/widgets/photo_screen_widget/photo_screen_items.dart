import 'package:flutter/material.dart';
import 'dart:io';

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
        color: Colors.black,
        child: Image.file(photoFile.image),
      ),
    );
  }
}
