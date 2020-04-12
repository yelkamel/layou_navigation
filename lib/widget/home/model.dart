import 'package:flutter/material.dart';

class HomeModel extends ChangeNotifier {
  TabController tabController;

  HomeModel();

  Future<bool> onBackPressed() async {
    // mais bwerk
    return Future.delayed(Duration(milliseconds: 100), () {
      return true;
    });

    /// final isHomePage
  }

  void setTabcontroller(TabController controller) {
    tabController = controller;
    notifyListeners();
  }
}

class Helper {
  static int getBackgroundPositionFromIndex(int index) {
    switch (index) {
      case 0:
        return 230;
      case 1:
        return 300;
      default:
        return 370;
    }
  }
}
