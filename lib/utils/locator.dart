
import 'package:food_app/login_screen/view_model/login_screen_view_model.dart';
import 'package:food_app/main_screen/view_model/main_screen_view_model.dart';
import 'package:get_it/get_it.dart';

 GetIt locator= GetIt.instance;


void setupLocater(){
  locator.registerLazySingleton<MainScreenViewModel>(() => MainScreenViewModel());
  /// To Do...
  /// locator.registerLazySingleton<LoginScreenViewModel>(() => LoginScreenViewModel());

  

}