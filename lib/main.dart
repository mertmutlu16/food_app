import 'package:flutter/material.dart';
import 'package:food_app/login_screen/view_model/login_screen_view_model.dart';
import 'package:food_app/splash_screen/view_model/splash_view_model.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food APP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
    SplashScreenViewModel splashViewModel = SplashScreenViewModel();
    LoginScreenViewModel loginScreenViewModel = LoginScreenViewModel();

  @override
  void initState() {
    super.initState();
    
    Future.delayed(const Duration(seconds: 3)).then((value){

      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context)=> loginScreenViewModel.buildLoginScreen(context)));
    });

  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: splashViewModel.buildSplashScreen(context),
      );
  }
}