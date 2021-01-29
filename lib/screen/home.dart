import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:volyaApp/screen/tabs/fairytale_screen.dart';
import 'package:volyaApp/screen/tabs/music_screen.dart';
import 'package:volyaApp/screen/tabs/photo_gallery_screen.dart';
import 'package:volyaApp/screen/tabs/video_screen.dart';
import 'package:volyaApp/widgets/app_drawer.dart';

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
      // appBar: AppBar(
      //   title: Center(
      //     child: Text(
      //       'My kid\'s app',
      //       style: GoogleFonts.acme(
      //         fontSize: 40,
      //         color: Colors.purple[200],
      //       ),
      //     ),
      //   ),
      //   backgroundColor: Colors.indigo,
      //actions: [],
      // ),
      // drawer: AppDrawer(),
      body: _pages[_selectedPageValue],
      //     Image.asset(
      //   //add animation
      //   'assets/images/Olya.jpg',
      //   fit: BoxFit.cover,
      //   height: double.infinity,
      //   width: double.infinity,
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedPageValue,
        //backgroundColor: Colors.indigo,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.indigo,
            icon: Icon(Icons.music_note),
            label: 'Music',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Fairytales',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library),
            label: 'Video',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.photo_camera),
            label: 'Photos',
          ),
        ],
        onTap: _selectedPage,
      ),
    );
  }
}
