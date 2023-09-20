// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/login_screen/view/widgets/email_input_area.dart';
import 'package:food_app/login_screen/view/widgets/next_page_button.dart';
import 'package:food_app/login_screen/view/widgets/password_input_area.dart';
import 'package:food_app/main_screen/view_model/main_screen_view_model.dart';


class LoginScreenView extends StatefulWidget {
  const LoginScreenView({super.key});

  @override
  State<LoginScreenView> createState() => _LoginScreenViewState();
}

class _LoginScreenViewState extends State<LoginScreenView> {
  MainScreenViewModel mainScreenViewModel = MainScreenViewModel();
  bool isObscured = false;
  TextEditingController passwordController = TextEditingController();

  void toggleObscurePassword() {
    setState(() {
      isObscured = !isObscured;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
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
