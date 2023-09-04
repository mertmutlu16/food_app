import 'package:flutter/material.dart';
import 'package:food_app/splash_screen/view_model/splash_view_model.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
   const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

 

class _MyAppState extends State<MyApp> {
  final splashViewModel = SplashScreenViewModel();

  @override
  void initState(){
    super.initState();

    Future.delayed(const Duration(seconds: 3)).then((value) {
      // Add login page
      //Navigator.pushReplacement(context, MaterialPageRoute(builder: (contex)=>LoginPage));
    });

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: splashViewModel.buildSplashScreen(context), 
    );
  }
}



