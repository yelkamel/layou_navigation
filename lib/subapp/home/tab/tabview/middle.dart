import 'package:flutter/material.dart';
import 'package:navigation/widget/utils/screen_size.dart';

class MiddleTab extends StatelessWidget {
  Widget _buildCataogueItem() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        color: Colors.indigo,
        height: 150,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      SingleChildScrollView(
        child: Column(
          children: <Widget>[
            YMargin(600),
            _buildCataogueItem(),
            _buildCataogueItem(),
            _buildCataogueItem(),
            _buildCataogueItem(),
            _buildCataogueItem(),
          ],
        ),
      ),
    ]);
  }
}
