import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({super.key});

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Container(
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
      ),
    );
  }
}