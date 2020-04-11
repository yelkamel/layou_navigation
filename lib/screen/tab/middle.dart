import 'package:flutter/material.dart';
import 'package:navigation/screen/utils/screen_size.dart';

class MiddleTab extends StatelessWidget {
  Widget _buildBackground() {
    return Image.network(
      'https://iphoneswallpapers.com/wp-content/uploads/2017/09/Artistic-Sunrise-Scenery-Mountains-iPhone-Wallpaper-iphoneswallpapers_com-469x832.jpg',
      fit: BoxFit.fitHeight,
    );
  }

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
      _buildBackground(),
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
