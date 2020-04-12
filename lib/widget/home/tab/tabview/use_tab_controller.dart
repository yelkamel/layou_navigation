import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:navigation/widget/home/model.dart';
import 'package:provider/provider.dart';

/* 

  ça marche pas à voir  ! 

 */

ValueNotifier<TabController> useTabController<T>(
    BuildContext context, int lenght, int initialIndex) {
  final tinkerMixin = useSingleTickerProvider();
  final tabController = useState<TabController>(
      TabController(vsync: tinkerMixin, length: 3, initialIndex: initialIndex));

  useEffect(() {
    Provider.of<HomeModel>(context, listen: false)
        .setTabcontroller(tabController.value);
    return () {
      tabController.dispose();
    };
  }, []);

  return tabController;
}
