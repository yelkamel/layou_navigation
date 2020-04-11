import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:navigation/navigation/left_page.dart';
import 'package:navigation/service/locator.dart';
import 'package:navigation/service/navigation.dart';

class SettingScreen extends StatelessWidget {
  final String title;

  const SettingScreen({Key key, this.title}) : super(key: key);

  static Route<dynamic> route(String text) {
    return LeftPage(
      screen: SettingScreen(
        title: text,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: GestureDetector(
          onTap: () {
            locator<Navigation>().goBack();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.red,
          ),
        ),
      ),
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Setting"),
            SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}
