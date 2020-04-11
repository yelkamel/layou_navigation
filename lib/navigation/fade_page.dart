import 'package:flutter/material.dart';

class FadePage extends PageRouteBuilder {
  final Widget screen;

  FadePage({this.screen})
      : super(
          transitionDuration: Duration(seconds: 1),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secAnimation) {
            return FadeTransition(
              child: screen,
              opacity: animation,
            );
          },
        );
}
