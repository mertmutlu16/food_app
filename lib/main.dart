import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_app/utils/extentions/scroll_behavior.dart';
import 'package:food_app/utils/locator.dart';
import 'package:food_app/utils/routes/app_router.dart';
import 'package:food_app/utils/routes/app_routes.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:sizer/sizer.dart';

void main() {
  setupLocater();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});


  
  @override
  Widget build(BuildContext context) {

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          scrollBehavior: CustomScrollBehavior(),
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          getPages: AppRouter.getPages,
          initialRoute: AppRouter.initialPath,
          unknownRoute: AppRoutes.unknownRoute,
        );
        

      }
    );
  }
}
