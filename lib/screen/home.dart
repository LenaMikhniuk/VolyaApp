import 'package:flutter/material.dart';

import 'package:volyaApp/screen/fairytales/fairytale_screen.dart';
import 'package:volyaApp/screen/tabs/music_screen.dart';
import 'package:volyaApp/screen/tabs/photo_gallery_screen.dart';
import 'package:volyaApp/screen/tabs/video_screen.dart';
import 'package:volyaApp/screen/tabs/weather_screen/searchBarScreen.dart';
import 'package:volyaApp/screen/tabs/weather_screen/weather_screen.dart';

import 'package:volyaApp/shared.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _pages = [
    MusicScreen(),
    FairytaleScreen(),
    VideoScreen(),
    PhotoGalleryScreen(),
    WeatherScreen(),
  ];
  int _selectedPageValue = 0;

  void _selectedPage(int value) {
    setState(() {
      _selectedPageValue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageValue],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageValue,
        unselectedItemColor: AppColors.unselectedItemColor,
        selectedItemColor: AppColors.selectedItemColor,
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.bottomNavigationBarColor,
            icon: Icon(Icons.music_note),
            label: 'Music',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.bottomNavigationBarColor,
            icon: Icon(Icons.book),
            label: 'Fairytales',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.bottomNavigationBarColor,
            icon: Icon(Icons.video_library),
            label: 'Video',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.bottomNavigationBarColor,
            icon: Icon(Icons.photo_camera),
            label: 'Photos',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.bottomNavigationBarColor,
            icon: Icon(Icons.cloud_queue),
            label: 'Weather',
          ),
        ],
        onTap: _selectedPage,
      ),
    );
  }
}
