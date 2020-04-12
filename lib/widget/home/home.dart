import 'package:flutter/material.dart';
import 'package:navigation/widget/home/model.dart';
import 'package:navigation/widget/home/tab/home_wrapper.dart';

import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<HomeModel>(
      create: (_) => new HomeModel(),
      child: HomeWrapper(),
    );
  }
}
