import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:navigation/navigation/transition/left_page.dart';
import 'package:navigation/service/locator.dart';
import 'package:navigation/service/navigation.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key key}) : super(key: key);

  static Route<dynamic> route() {
    return LeftPage(
      screen: SettingScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: locator<Navigation>().goBack,
          child: Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
        ),
        title: Hero(
          tag: 'setting',
          child: Icon(
            Icons.settings,
            color: Colors.red,
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Setting"),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
