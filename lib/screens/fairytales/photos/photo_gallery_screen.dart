import 'package:flutter/material.dart';

import 'package:volyaApp/data/photo_screen/photo_data.dart';
import 'package:volyaApp/models/photo_screen_models/photo_model.dart';
import 'package:volyaApp/screens/auth/log_out.dart';
import 'package:volyaApp/shared.dart';
import 'package:volyaApp/util/db_utils.dart';
import 'package:volyaApp/widgets/photo_screen_widget/photo_screen_items.dart';
import 'package:image_picker/image_picker.dart';

import 'image_viewer.dart';

class PhotoGalleryScreen extends StatefulWidget {
  @override
  _PhotoGalleryScreenState createState() => _PhotoGalleryScreenState();
}

class _PhotoGalleryScreenState extends State<PhotoGalleryScreen> {
  final picker = ImagePicker();

  Future getImage() async {
    Navigator.of(context).pop();

    final pickedFile = await picker.getImage(
      source: ImageSource.camera,
      imageQuality: 80,
    );

    if (pickedFile != null) {
      DBUtils.insert('user_photos', {
        'image': pickedFile.path,
      });
      setState(() {});
    }
  }

  Future getGalleryImage() async {
    Navigator.of(context).pop();
    final pickedFile = await picker.getImage(
      source: ImageSource.gallery,
      imageQuality: 100,
    );

    if (pickedFile != null) {
      DBUtils.insert('user_photos', {
        'image': pickedFile.path,
      });

      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: LogOut(),
      appBar: AppBar(
        title: FittedBox(
          fit: BoxFit.cover,
          child: Text(
            'Photo Gallery',
            style: FontsStyles.baseStyleLight,
          ),
        ),
        centerTitle: true,
        backgroundColor: AppColors.primaryColor,
        leading: GestureDetector(
          child: Icon(Icons.add_a_photo),
          onTap: _pickImage,
        ),
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
                color: AppColors.backgroundColor,
                child: GridView.builder(
                  padding: EdgeInsets.all(10),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemBuilder: (context, index) => PhotoScreenItem(
                    photoFile: list[index],
                    onTap: () {
                      ImageViewer.navigate(context, list, index);
                    },
                    onDelete: () {
                      showDialog(
                        context: (context),
                        builder: (context) => AlertDialog(
                          title: Text(
                            'Do you want to delete this photo?',
                            style: FontsStyles.baseStyleDark,
                          ),
                          actions: [
                            TextButton(
                              onPressed: () async {
                                Navigator.of(context).pop();
                                await DBUtils.deleteById(list[index].id);
                                setState(() {});
                              },
                              child: Text(
                                'Yes',
                                style: FontsStyles.baseStyleDark,
                              ),
                            ),
                            TextButton(
                                child: Text(
                                  'No',
                                  style: FontsStyles.baseStyleDark,
                                ),
                                onPressed: () {
                                  Navigator.of(context).pop();
                                }),
                          ],
                        ),
                      );
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
              'Do you want to use the camera or pick a picture from the gallery?',
              style: FontsStyles.baseStyleDark,
            ),
            actions: [
              iconButton(
                Icons.photo_camera,
                getImage,
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
        size: 30,
        color: AppColors.textColorDark,
      ),
    );
  }
}
