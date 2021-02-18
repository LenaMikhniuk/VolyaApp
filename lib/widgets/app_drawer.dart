import 'package:flutter/material.dart';
import 'package:volyaApp/screens/music_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          AppBar(
            backgroundColor: Colors.indigo,
            title: Text(
              'Choose a category',
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.bluetooth_audio),
            title: Text(
              'Music',
            ),
            onTap: () {
              Navigator.of(context).pushNamed(MusicScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.book),
            title: Text(
              'Fairytale',
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
