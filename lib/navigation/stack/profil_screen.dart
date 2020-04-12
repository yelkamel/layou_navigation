import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:navigation/navigation/transition/top_bottom.dart';
import 'package:navigation/service/locator.dart';
import 'package:navigation/service/navigation.dart';
import 'package:navigation/widget/button/go_setting.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({Key key}) : super(key: key);

  static Route<dynamic> route() {
    return TopBottomPage(
      screen: ProfilScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GoSetting(),
        backgroundColor: Colors.transparent,
        actions: [
          GestureDetector(
            onTap: locator<Navigation>().goBack,
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
          ],
        ),
      ),
    );
  }
}
