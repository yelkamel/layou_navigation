import 'package:flutter/material.dart';
import 'package:navigation/navigation/stack/setting_screen.dart';
import 'package:navigation/service/locator.dart';
import 'package:navigation/service/navigation.dart';

class GoSetting extends StatelessWidget {
  void action() {
    locator<Navigation>().navigateTo(
      SettingScreen.route(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: SafeArea(
        child: Hero(
          tag: "setting",
          child: Icon(
            Icons.settings,
            size: 50,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}
