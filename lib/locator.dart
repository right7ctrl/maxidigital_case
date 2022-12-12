import 'package:get_it/get_it.dart';
import 'package:maxidigital_case/view/invite/invite_viewmodel.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => InviteViewModel());
}
