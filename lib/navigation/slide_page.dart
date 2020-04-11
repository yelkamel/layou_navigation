import 'package:flutter/material.dart';

class SlidePage extends PageRouteBuilder {
  final Widget screen;

  SlidePage({this.screen})
      : super(
          transitionDuration: Duration(seconds: 1),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secAnimation) {
            var begin = Offset(0.0, 1.0);
            var end = Offset.zero;
            var tween = Tween(begin: begin, end: end);
            var offsetAnimation = animation.drive(tween);
            return SlideTransition(
              child: screen,
              position: offsetAnimation,
            );
          },
        );
}
