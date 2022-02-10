import 'package:flutter/material.dart';

class MusicGallery extends StatefulWidget {
  const MusicGallery({Key? key}) : super(key: key);

  @override
  State<MusicGallery> createState() => _MusicGalleryState();
}

class _MusicGalleryState extends State<MusicGallery> {
  static const _songs = [
    {
      "name": "Hello it's me",
      "duration": 2.3,
    },
    {
      "name": "We talk a lot",
      "duration": 1.8,
    },
    {
      "name": "Don't feel guilty",
      "duration": 2.6,
    },
    {
      "name": "Wait for me",
      "duration": 2.6,
    }
  ];

  Widget _buildSong(Map song) {
    return Column(
      children: [
        ListTile(
          title: Text(song['name']),
        ),
        const Divider(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: _songs.length,
        itemBuilder: (BuildContext context, int i) {
          return _buildSong(_songs[i]);
        });
  }
}
