import 'package:flutter/material.dart';

class RightTab extends StatelessWidget {
  Widget _buildCataogueItem() {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        color: Colors.blue,
        height: 200,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildCataogueItem(),
        _buildCataogueItem(),
      ],
    );
  }
}
