import 'package:flutter/material.dart';

class BottomTabBar extends StatelessWidget {
  final TabController controller;

  const BottomTabBar({Key key, this.controller}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: TabBar(
            controller: controller,
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
