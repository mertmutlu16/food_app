
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:food_app/utils/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {

  

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   
   
    @override
  void initState() {
     Future.delayed(const Duration(seconds: 3)).then((value){
      //Navigation with Locater
      Get.offNamedUntil(AppRoutes.LOGIN_SCREEN_PATH, (route) => false);
      
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
    color : const Color.fromARGB(1000,241,0,77),

      child: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              
            SizedBox(
              height: 150,
              child: Image.asset('images/splashMotobike.png')),
            const SizedBox(
              height: 35,
            ),
            const SpinKitThreeBounce(
              color: Colors.black45 , 
              size: 35.0,          
            )
          ],
        ),
      ),
    );
  }
}