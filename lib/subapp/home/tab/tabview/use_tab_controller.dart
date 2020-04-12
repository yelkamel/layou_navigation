import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:navigation/widget/home/model.dart';
import 'package:provider/provider.dart';

ValueNotifier<TabController> useTabController<T>(
    BuildContext context, int lenght, int initialIndex) {
  final tinkerMixin = useSingleTickerProvider();
  final tabController = useState<TabController>(new TabController(
    vsync: tinkerMixin,
    initialIndex: 1,
    length: 3,
  ));

  useEffect(() {
    Provider.of<HomeModel>(context, listen: false)
        .setTabcontroller(tabController.value);
    return () {
      tabController.dispose();
    };
  }, []);

  return tabController;
}
