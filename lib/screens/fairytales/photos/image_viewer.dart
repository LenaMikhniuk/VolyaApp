import 'package:flutter/material.dart';
import 'package:volyaApp/models/photo_screen_models/photo_model.dart';

class ImageViewer extends StatelessWidget {
  final List<Photo> photos;
  final int currentPhoto;

  const ImageViewer({
    Key key,
    this.photos,
    this.currentPhoto,
  }) : super(key: key);
  static Future<dynamic> navigate(
      BuildContext context, List<Photo> photos, int currentPhoto) {
    return Navigator.of(context).push(MaterialPageRoute(
        builder: (context) =>
            ImageViewer(photos: photos, currentPhoto: currentPhoto)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.file(photos[currentPhoto].image),
    );
  }
}
