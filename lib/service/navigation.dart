import 'package:flutter/widgets.dart';

class Navigation {
  final GlobalKey<NavigatorState> navigatorKey =
      new GlobalKey<NavigatorState>();

  Future<dynamic> navigateTo(Route route) {
    return navigatorKey.currentState.push(route);
  }

  bool goBack() {
    return navigatorKey.currentState.pop();
  }
}
