import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:navigation/widget/home/tab/background.dart';
import 'package:navigation/widget/home/tab/overlay.dart';
import 'package:navigation/widget/home/tab/tabview/index.dart';

class HomeWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MainBackground(),
        MainTabView(),
        MainOverlay(),
      ],
    );
  }
}
