import 'package:flutter/material.dart';

class LeftTab extends StatelessWidget {
  Widget _buildCataogueItem() {
    return Padding(
      padding: const EdgeInsets.all(40.0),
      child: Container(
        color: Colors.redAccent,
        height: 300,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _buildCataogueItem(),
    );
  }
}
