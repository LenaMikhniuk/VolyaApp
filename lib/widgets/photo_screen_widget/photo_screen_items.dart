import 'package:flutter/material.dart';

import 'package:volyaApp/models/photo_screen_models/photo_model.dart';

class PhotoScreenItem extends StatelessWidget {
  final Photo photoFile;
  final VoidCallback onTap;
  final VoidCallback onDelete;

  const PhotoScreenItem({Key key, this.photoFile, this.onTap, this.onDelete})
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
          child: Stack(
            children: [
              Image.file(
                photoFile.image,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: IconButton(
                    icon: Container(
                      padding: EdgeInsets.all(5),
                      color: Colors.black26,
                      child: Icon(
                        Icons.delete,
                        color: Colors.red.shade200,
                      ),
                    ),
                    onPressed: onDelete),
              )
            ],
          ),
        ),
      ),
    );
  }
}
