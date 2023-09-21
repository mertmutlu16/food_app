// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:food_app/login_screen/view/widgets/email_input_area.dart';
import 'package:food_app/login_screen/view/widgets/next_page_button.dart';
import 'package:food_app/login_screen/view/widgets/password_input_area.dart';

class LoginScreenView extends StatefulWidget {
  const LoginScreenView({super.key});

  @override
  State<LoginScreenView> createState() => _LoginScreenViewState();
}

class _LoginScreenViewState extends State<LoginScreenView> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(1.5.h),
          child: Column(
            children: [


              EmailInputArea(),
              PasswordInputArea(),
              const Spacer(),
              LoginNextPageButton()
            ],
          ),
        ),
      ),
    );
  }
}
