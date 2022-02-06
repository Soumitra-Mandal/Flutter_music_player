import 'package:flutter/material.dart';

class MusicGallery extends StatelessWidget {
  const MusicGallery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(
        Icons.music_note,
        size: 50,
      ),
    );
  }
}
