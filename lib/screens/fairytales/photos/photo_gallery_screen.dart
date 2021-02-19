import 'package:flutter/material.dart';
import 'dart:io';
import 'package:volyaApp/data/photo_screen/photo_data.dart';
import 'package:volyaApp/models/photo_screen_models/photo_model.dart';
import 'package:volyaApp/shared.dart';
import 'package:volyaApp/util/db_utils.dart';
import 'package:volyaApp/widgets/photo_screen_widget/photo_screen_items.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as syspath;

import 'image_viewer.dart';

class PhotoGalleryScreen extends StatefulWidget {
  @override
  _PhotoGalleryScreenState createState() => _PhotoGalleryScreenState();
}

class _PhotoGalleryScreenState extends State<PhotoGalleryScreen> {
  final picker = ImagePicker();

  Future getImage() async {
    final pickedFile = await picker.getImage(
      source: ImageSource.camera,
      imageQuality: 50,
      maxWidth: 150,
    );
    if (pickedFile != null) {
      DBUtils.insert('user_photos', {
        'image': pickedFile.path,
      });
      setState(() {});
    }
    Navigator.of(context).pop();
  }

  Future getGalleryImage() async {
    final pickedFile = await picker.getImage(
      source: ImageSource.gallery,
      imageQuality: 50,
      maxWidth: 150,
    );
    if (pickedFile != null) {
      DBUtils.insert('user_photos', {
        'image': pickedFile.path,
      });

      setState(() {});
    }
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: FittedBox(
          fit: BoxFit.cover,
          child: Text(
            'Photo Gallery',
            style: FontsStyles.appBar,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.appBarMainColor,
        actions: [
          IconButton(
            icon: Icon(Icons.add_a_photo),
            onPressed: _pickImage,
          ),
        ],
      ),
      body: FutureBuilder<List<Photo>>(
        future: PhotoScreenData.getImages(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final list = snapshot.data;
            if (list.isEmpty) {
              return Center(
                child: Text('Add photos...'),
              );
            } else
              return Container(
                width: double.infinity,
                height: double.infinity,
                color: AppColors.bodyPhotoScreenColor,
                child: GridView.builder(
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) => PhotoScreenItems(
                    photoFile: list[index],
                    onTap: () {
                      ImageViewer.navigate(context, list, index);
                    },
                  ),
                  itemCount: list.length,
                ),
              );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Future<void> _pickImage() async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'Do you want use camera or pick a picture from the gallery?',
            ),
            actions: [
              iconButton(
                Icons.photo_camera,
                getImage,
              ),
              SizedBox(
                width: 25,
              ),
              iconButton(
                Icons.photo_album,
                getGalleryImage,
              ),
            ],
          );
        });
  }

  IconButton iconButton(IconData icon, Function onPressed) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        size: 40,
        color: AppColors.iconButtonPhotoScreenColor,
      ),
    );
  }
}
