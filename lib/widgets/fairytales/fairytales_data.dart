import 'package:volyaApp/models/fairytales.dart';

class FairytalesData {
  static const List<Fairytale> fairytales = [
    Fairytale(
      id: 'a1',
      title: 'Айболит',
      image: 'assets/images_fairytales/aibolit.jpg',
      sound: 'sounds_fairytales/aibolit.mp3',
    ),
    Fairytale(
      id: 'a2',
      title: 'Чип и Дейл спешат на помощь',
      image: 'assets/images_fairytales/chip.jpg',
      sound: 'sounds_fairytales/chip.mp3',
    ),
    Fairytale(
      id: 'a3',
      title: 'Цветик-семицветик',
      image: 'assets/images_fairytales/cvetic.jpg',
      sound: 'sounds_fairytales/cvetik.mp3',
    ),
  ];

  // Fairytale findById(String id) {
  //   return fairytales.firstWhere((element) => element.id == id);
  // }
}
