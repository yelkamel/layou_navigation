import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:navigation/navigation/fade_page.dart';
import 'package:navigation/screen/stack/profil.dart';
import 'package:navigation/screen/tab/left.dart';
import 'package:navigation/screen/tab/middle.dart';
import 'package:navigation/screen/tab/right.dart';
import 'package:navigation/screen/tab/widget/bottom_tab.dart';
import 'package:navigation/service/locator.dart';
import 'package:navigation/service/navigation.dart';

class HomeTab extends StatelessWidget {
  final String title;

  const HomeTab({Key key, this.title}) : super(key: key);

  static Route<dynamic> route(String userEmail) {
    return FadePage(
      screen: HomeTab(
        title: userEmail,
      ),
    );
  }

  Widget _buildTopLeftButton() {
    return GestureDetector(
      onTap: () {
        locator<Navigation>().navigateTo(
          ProfilScreen.route('SETTING'),
        );
      },
      child: SafeArea(
        child: Hero(
          tag: "profil",
          child: Icon(
            Icons.people,
            size: 50,
            color: Colors.red,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Stack(
        children: [
          Scaffold(
            backgroundColor: Colors.transparent,
            bottomNavigationBar: BottomTab(),
            body: TabBarView(
              children: <Widget>[
                LeftTab(),
                MiddleTab(),
                RightTab(),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: _buildTopLeftButton(),
          ),
        ],
      ),
    );
  }
}
