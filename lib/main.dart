import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:navigation/service/locator.dart';
import 'package:navigation/service/navigation.dart';
import 'package:navigation/subapp/home/index.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // Blocker l'orientation vertical
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  // Navigation color change
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.deepOrange,
    systemNavigationBarIconBrightness: Brightness.light,
  ));

  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'La You Navigation enjoy 😁',
      navigatorKey: locator<Navigation>().navigatorKey,
      debugShowCheckedModeBanner: false,
      home: Home(), // INITIAL SCREEN
    );
  }
}
