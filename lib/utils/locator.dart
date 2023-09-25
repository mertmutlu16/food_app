
import 'package:food_app/detail_screen/view_model/detail_screen_view_model.dart';
import 'package:food_app/login_screen/view_model/login_screen_view_model.dart';
import 'package:food_app/main_screen/view_model/main_screen_view_model.dart';
import 'package:food_app/signup_screen/view_model/signup_screen_view_model.dart';
import 'package:get_it/get_it.dart';

import '../favorites_screen/view_model/favorite_screen_view_model.dart';


 GetIt locator= GetIt.instance;


void setupLocater(){
  locator.registerLazySingleton<MainScreenViewModel>(() => MainScreenViewModel());
  
  locator.registerLazySingleton<DetailScreenViewModel>(() => DetailScreenViewModel());
  
  locator.registerLazySingleton<LoginScreenViewModel>(() => LoginScreenViewModel());

  locator.registerLazySingleton<SignupScreenViewModel>(() => SignupScreenViewModel());

  locator.registerLazySingleton<FavoritesScreenViewModel>(() => FavoritesScreenViewModel());

  
  

}