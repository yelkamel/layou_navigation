import 'package:flutter/material.dart';

class HomeModel extends ChangeNotifier {
  TabController tabController;
  bool exit = true;
  HomeModel();

  Future<bool> onBackPressed() async {
    tabController.animateTo(1);
    Future.delayed(Duration(seconds: 1), () {
      exit = true;
    });
    return (exit);
  }

  void onTabChange() {
    exit = tabController.index != 1;
  }

  void setTabcontroller(TabController controller) {
    tabController = controller;
    tabController.addListener(onTabChange);
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
