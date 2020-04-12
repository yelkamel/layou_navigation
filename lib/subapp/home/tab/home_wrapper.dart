import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:navigation/widget/home/tab/background.dart';
import 'package:navigation/widget/home/tab/overlay.dart';
import 'package:navigation/widget/home/tab/tabview/index.dart';
import 'package:provider/provider.dart';

import '../model.dart';

class HomeWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeModel>(context);

    return WillPopScope(
      onWillPop: model.onBackPressed,
      child: Stack(
        children: [
          MainBackground(),
          MainTabView(),
          MainOverlay(),
        ],
      ),
    );
  }
}
