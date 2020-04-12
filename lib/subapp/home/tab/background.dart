import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math;
import 'package:flutter/scheduler.dart' show timeDilation;

import '../model.dart';

class ImageBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5000,
      color: Colors.blue,
      child: Image.asset(
        'assets/images/background_hometab.jpg',
        fit: BoxFit.cover,
      ),
    );
  }
}

class MainBackground extends StatelessWidget {
  Widget _buildAnimation(HomeModel model) {
    if (model.tabController != null) {
      return AnimatedBuilder(
        animation: model.tabController.animation,
        builder: (BuildContext context, snapshot) {
          timeDilation = 2.0; // Will slow down animations by a factor of two

          return Transform(
            transform: Matrix4.identity()
              ..translate(model.tabController.animation.value * -100.0),
            // ..setEntry(3, 2, 0.001) // Rotate magic formule 😉
            // ..rotateY(-math.pi / 2 * model.tabController.animation.value),
            alignment: Alignment.center,
            child: ImageBackground(),
          );
        },
      );
    }

    return ImageBackground();
  }

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<HomeModel>(context);

    return Positioned(
      top: 0,
      bottom: 0,
      left: -300,
      width: 1000,
      child: _buildAnimation(model),
    );
  }
}
