import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';

import '../../model.dart';
import 'left.dart';
import 'middle.dart';
import 'right.dart';
import 'tab_bar.dart';

class MainTabView extends StatefulWidget {
  @override
  _MainTabViewState createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();

    tabController = TabController(vsync: this, length: 3, initialIndex: 1);
    Future.delayed(Duration(seconds: 2), () {
      Provider.of<HomeModel>(context, listen: false)
          .setTabcontroller(tabController);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: BottomTabBar(controller: tabController),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          LeftTab(),
          MiddleTab(),
          RightTab(),
        ],
      ),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }
}
