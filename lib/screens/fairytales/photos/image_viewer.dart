import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:volyaApp/models/photo_screen_models/photo_model.dart';

class ImageViewer extends StatefulWidget {
  final List<Photo> photos;
  final int currentPhoto;

  ImageViewer({
    Key key,
    this.photos,
    this.currentPhoto,
  }) : super(key: key);
  static Future<dynamic> navigate(
    BuildContext context,
    List<Photo> photos,
    int currentPhoto,
  ) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => ImageViewer(
          photos: photos,
          currentPhoto: currentPhoto,
        ),
      ),
    );
  }

  @override
  _ImageViewerState createState() => _ImageViewerState();
}

class _ImageViewerState extends State<ImageViewer> {
  Photo photoFile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: PageView.builder(
          itemBuilder: (context, index) => Image.file(
            widget.photos[widget.currentPhoto].image,
            fit: BoxFit.cover,
          ),
          itemCount: widget.photos.length,
        ),
      ),
    );
  }
}
