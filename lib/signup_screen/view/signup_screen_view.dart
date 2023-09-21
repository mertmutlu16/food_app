import 'package:flutter/material.dart';
import 'package:food_app/signup_screen/view/widgets/Signup_button.dart';
import 'package:food_app/signup_screen/view/widgets/email_input_area.dart';
import 'package:food_app/signup_screen/view/widgets/password_input_area.dart';
import 'package:food_app/signup_screen/view/widgets/signup_title_area.dart';
import 'package:food_app/signup_screen/view/widgets/username_input_area.dart';
import 'package:sizer/sizer.dart';

class SignupScreenView extends StatefulWidget {
  const SignupScreenView({super.key});

  @override
  State<SignupScreenView> createState() => _SignupScreenViewState();
}

class _SignupScreenViewState extends State<SignupScreenView> {
 
 
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      body: buildBody(),
    );

  }


  
  Widget buildBody(){
    return  SingleChildScrollView(
      child: Center(
        child: Padding(
          padding:  EdgeInsets.only(top:12.h ,right: 2.h , left:2.h),
          child:  const Column(
            children: [
              SignupTitleArea(),
              UsernameInputArea(),
              EmailInputArea(),
              PasswordInputArea(),
              SignupButton(),
          
            ],
          ),
        ),
        
      ),
    );

  }
}