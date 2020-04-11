import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:navigation/navigation/slide_page.dart';

import 'package:navigation/service/locator.dart';
import 'package:navigation/service/navigation.dart';

class PlayerScreen extends StatelessWidget {
  final String title;

  const PlayerScreen({Key key, this.title}) : super(key: key);

  static Route<dynamic> route(String userEmail) {
    return SlidePage(
      screen: PlayerScreen(
        title: userEmail,
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
            Text("Player"),
            SizedBox(height: 10),
            Icon(Icons.play_arrow),
          ],
        ),
      ),
    );
  }
}
