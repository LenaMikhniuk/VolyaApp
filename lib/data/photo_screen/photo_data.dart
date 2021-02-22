import 'dart:io';

import 'package:volyaApp/models/photo_screen_models/photo_model.dart';
import 'package:volyaApp/util/db_utils.dart';

class PhotoScreenData {
  static Future<List<Photo>> getImages() async {
    final dataList = await DBUtils.getData('user_photos');
    return dataList.map((item) {
      return Photo(
        image: File(item['image']),
        id: item['id'],
      );
    }).toList();
  }
}
