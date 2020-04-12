import 'package:flutter/material.dart';
import 'package:navigation/subapp/home/model.dart';
import 'package:navigation/subapp/home/tab/home_wrapper.dart';

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
