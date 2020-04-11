import 'package:flutter/material.dart';

class BottomTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TabBar(
            tabs: <Widget>[
              Icon(Icons.music_note, size: 30),
              Icon(Icons.home, size: 30),
              Icon(Icons.library_music, size: 30)
            ],
          ),
        ),
      ),
    );
  }
}
