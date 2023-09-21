// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:food_app/login_screen/view_model/login_screen_view_model.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/routes/app_routes.dart';
import '../../../utils/locator.dart';

class LoginNextPageButton extends StatefulWidget {
  @override
  State<LoginNextPageButton> createState() => _LoginNextPageButtonState();
}

class _LoginNextPageButtonState extends State<LoginNextPageButton> {
  final loginScreenViewModel = locator<LoginScreenViewModel>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void didChangeDependencies() {
    emailController = loginScreenViewModel.getEmailController();
    passwordController = loginScreenViewModel.getPasswordController();

    super.didChangeDependencies();
  }

  void _showEmptyFieldsAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Warning'),
          content:
              const Text("Email and Password fields cannot be left blank."),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Get.back();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(bottom: 3.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account ?",
                style: TextStyle(fontSize: 14.sp),
              ),
              GestureDetector(
                onTap: (){
                 Get.toNamed(AppRoutes.SIGNUP_SCREEN_PATH);
                },
                  child: Text(
                " Sign up",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.sp),
              )),
            ],
          ),
        ),

        Observer(builder: (_) {
          return ElevatedButton(
            onPressed: () async {
              if (emailController.text.isNotEmpty &&
                  passwordController.text.isNotEmpty) {

                await loginScreenViewModel
                    .getUser(emailController.text.toString(),
                        passwordController.text.toString())
                    .then((value) {});
                Get.offNamedUntil(AppRoutes.MAIN_SCREEN_PATH, (route) => false);
              } else {
                _showEmptyFieldsAlert();
              }
            },
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 8.h),
              backgroundColor: const Color.fromARGB(1000, 241, 0, 77),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text("Sign in"),
          );
        }),
      ],
    );
  }
}
