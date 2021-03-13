import 'package:flutter/material.dart';
import 'package:volyaApp/data/photo_screen/auth_screen/user_repository.dart';
import 'package:volyaApp/screens/auth/log_out.dart';

import 'package:volyaApp/screens/music_screen.dart';
import 'package:volyaApp/screens/fairytales/photos/photo_gallery_screen.dart';

import 'package:volyaApp/screens/weather_screen.dart';

import 'package:volyaApp/shared.dart';

import 'fairytales/fairytale_screen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _pages = [
    MusicScreen(),
    FairytaleScreen(),
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
        unselectedItemColor: AppColors.textColorLight,
        selectedItemColor: AppColors.highlighterColor,
        items: [
          BottomNavigationBarItem(
            backgroundColor: AppColors.primaryColor,
            icon: Icon(Icons.music_note),
            label: 'Music',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.primaryColor,
            icon: Icon(Icons.book),
            label: 'Fairytales',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.primaryColor,
            icon: Icon(Icons.photo_camera),
            label: 'Photos',
          ),
          BottomNavigationBarItem(
            backgroundColor: AppColors.primaryColor,
            icon: Icon(Icons.cloud_queue),
            label: 'Weather',
          ),
        ],
        onTap: _selectedPage,
      ),
    );
  }
}
