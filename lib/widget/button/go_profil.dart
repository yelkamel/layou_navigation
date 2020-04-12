import 'package:flutter/material.dart';
import 'package:navigation/navigation/stack/profil_screen.dart';
import 'package:navigation/service/locator.dart';
import 'package:navigation/service/navigation.dart';

class GoProfil extends StatelessWidget {
  void action() {
    locator<Navigation>().navigateTo(
      ProfilScreen.route(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: action,
      child: SafeArea(
        child: Hero(
          tag: "profil",
          child: Icon(
            Icons.people,
            size: 50,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}
