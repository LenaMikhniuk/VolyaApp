import 'package:flutter/material.dart';

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
  PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController(
      initialPage: widget.currentPhoto,
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView.builder(
          controller: controller,
          itemBuilder: (context, index) {
            print('index - $index');
            return Image.file(widget.photos[index].image, fit: BoxFit.contain);
          },
          itemCount: widget.photos.length,
        ),
      ),
    );
  }
}
