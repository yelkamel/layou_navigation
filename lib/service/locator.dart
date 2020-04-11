import 'package:get_it/get_it.dart';
import 'package:navigation/service/navigation.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<Navigation>(() => Navigation());
}
