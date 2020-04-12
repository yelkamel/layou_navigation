import 'package:flutter/material.dart';

class TopBottomPage extends PageRouteBuilder {
  final Widget screen;

  TopBottomPage({this.screen})
      : super(
          transitionDuration: Duration(milliseconds: 500),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secAnimation) {
            var begin = Offset(0.0, 1.0);
            var end = Offset.zero;
            var tween = Tween(begin: begin, end: end);
            var offsetAnimation = animation.drive(tween);
            return FadeTransition(
              child: screen,
              opacity: animation,
            );
          },
        );
}
