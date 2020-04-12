import 'package:flutter/material.dart';

class FadeSlidePage extends PageRouteBuilder {
  final Widget screen;

  FadeSlidePage({this.screen})
      : super(
          transitionDuration: Duration(milliseconds: 500),
          pageBuilder: (BuildContext context, Animation<double> animation,
              Animation<double> secAnimation) {
            var begin = Offset(0.0, 1.0);
            var end = Offset.zero;
            var tween = Tween(begin: begin, end: end);
            var offsetAnimation = animation.drive(tween);
            return FadeTransition(
              child: SlideTransition(
                child: screen,
                position: offsetAnimation,
              ),
              opacity: animation,
            );
          },
        );
}
