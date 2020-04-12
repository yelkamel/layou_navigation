import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:provider/provider.dart';

import '../model.dart';
import 'background.dart';
import 'overlay.dart';
import 'tabview/index.dart';

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
