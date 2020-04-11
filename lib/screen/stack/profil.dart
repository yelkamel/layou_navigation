import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:navigation/navigation/top_bottom.dart';
import 'package:navigation/screen/stack/setting.dart';
import 'package:navigation/service/locator.dart';
import 'package:navigation/service/navigation.dart';

class ProfilScreen extends StatelessWidget {
  final String title;

  const ProfilScreen({Key key, this.title}) : super(key: key);

  static Route<dynamic> route(String userEmail) {
    return TopBottomPage(
      screen: ProfilScreen(
        title: userEmail,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            locator<Navigation>().navigateTo(
              SettingScreen.route('SETTING'),
            );
          },
          child: Icon(Icons.settings),
        ),
        backgroundColor: Colors.transparent,
        actions: [
          GestureDetector(
            onTap: () {
              locator<Navigation>().goBack();
            },
            child: Icon(
              Icons.close,
              color: Colors.red,
              size: 30,
            ),
          ),
        ],
      ),
      backgroundColor: Colors.orange,
      body: Center(
        child: Column(
          children: <Widget>[
            Hero(
              tag: "profil",
              child: Icon(
                Icons.people,
                size: 100,
                color: Colors.red,
              ),
            ),
            Text("Profil"),
            SizedBox(height: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}
