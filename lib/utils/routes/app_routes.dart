// ignore_for_file: constant_identifier_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:food_app/atomic_widgets/error_screen.dart';
import 'package:food_app/shopping_card_screen/view/shopping_card_screen_view.dart';
import 'package:food_app/detail_screen/view/detail_screen_view.dart';
import 'package:food_app/favorites_screen/view/favorites_view_screen.dart';
import 'package:food_app/login_screen/view/login_screen_view.dart';
import 'package:food_app/signup_screen/view/signup_screen_view.dart';
import 'package:food_app/main_screen/view/main_screen_view.dart';
import 'package:food_app/splash_screen/view/splash_screen_view.dart';
import 'package:get/get.dart';

import '../../profile_screen/view/profile_screen_view.dart';

class AppRoutes {
  static const Transition _transition = Transition.native;
  static const Duration _transitionDuration = Duration(milliseconds: 500);
  static const INIT_PATH = "/splashScreenPath";
  static const LOGIN_SCREEN_PATH = "/loginScreenPath";
  static const SIGNUP_SCREEN_PATH = "/signupScreenPath";
  static const MAIN_SCREEN_PATH = "/mainScreenPath";
  static const DETAIL_SCREEN_PATH = "/detailScreenView";
  static const FAVORITES_SCREEN_PATH = "/favoritesScreenView";
  static const SHOPPING_CARD_SCREEN_PATH = "/shoppingCardScreenPath";
  static const PROFILE_SCREEN_PATH = "/profileScreenPath";
  static const ERROR_SCREEN_PATH = "/errorScreenPath";
  
  

  static GetPage getPage(Widget Function() widgetFn, String path,
      {Transition? transition, List<GetPage>? children}) {
    return GetPage(
        name: path,
        transition: transition ?? _transition,
        transitionDuration: _transitionDuration,
        fullscreenDialog: true,
        page: widgetFn,
        children: children ?? []);
  }

  static final get_routes = <GetPage>[
    getPage(() => const SplashScreenView(), INIT_PATH),
    getPage(() => const LoginScreenView(), LOGIN_SCREEN_PATH),
    getPage(() => const SignupScreenView(), SIGNUP_SCREEN_PATH),
    getPage(() => const MainScreenView(), MAIN_SCREEN_PATH),
    getPage(() =>  DetailScreenView(incomingId : Get.arguments), DETAIL_SCREEN_PATH),
    getPage(() => const FavoritesScreenView(), FAVORITES_SCREEN_PATH),
    getPage(() => const ShoppingCardScreenView(), SHOPPING_CARD_SCREEN_PATH),
    getPage(() => const ProfileScreenView(), PROFILE_SCREEN_PATH),


    


    unknownRoute
  ];

  static final unknownRoute =
      getPage(() => const ErrorScreen(), ERROR_SCREEN_PATH);
}
