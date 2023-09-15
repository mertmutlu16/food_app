import 'package:food_app/utils/routes/app_routes.dart';
import 'package:get/get.dart';

class AppRouter{
  static const String initialPath=AppRoutes.MAIN_SCREEN_PATH;
  static final List<GetPage<dynamic>> getPages=AppRoutes.get_routes;
  static final GetPage<dynamic> unknownRoute=AppRoutes.unknownRoute;
}