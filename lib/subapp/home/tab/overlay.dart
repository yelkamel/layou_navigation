import 'package:flutter/material.dart';
import 'package:navigation/button/go_profil.dart';

class MainOverlay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: GoProfil(),
    );
  }
}
