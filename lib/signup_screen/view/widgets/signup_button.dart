import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:food_app/utils/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../utils/locator.dart';
import '../../view_model/signup_screen_view_model.dart';

class SignupButton extends StatefulWidget {
  const SignupButton({super.key});

  @override
  State<SignupButton> createState() => _SignupButtonState();
}

class _SignupButtonState extends State<SignupButton> {
  final signupScreenViewModel = locator<SignupScreenViewModel>();

  TextEditingController fullnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void didChangeDependencies() {
    emailController = signupScreenViewModel.getEmailController();
    fullnameController = signupScreenViewModel.getFullnameController();
    passwordController = signupScreenViewModel.getPasswordController();

    super.didChangeDependencies();
  }

  void _showEmptyFieldsAlert() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Warning'),
          content: const Text(
              "Username,Email and Password fields cannot be left blank."),
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
    return Observer(builder: (_) {
      return Column(
        children: [
          
          Padding(
            padding: EdgeInsets.only(top:3.h),
            child: Text(
              "Already have an account ?",
              style: TextStyle(fontSize: 14.sp),
            ),
          ),
          GestureDetector(
              onTap: () {
                Get.toNamed(AppRoutes.LOGIN_SCREEN_PATH);
              },
              child: Text(
                " Log in",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.sp),
              )),
          Padding(
            padding: EdgeInsets.only(top: 21.h, bottom: 2.5.h),
            child: ElevatedButton(
              onPressed: () async {
                if (fullnameController.text.isNotEmpty &&
                    emailController.text.isNotEmpty &&
                    passwordController.text.isNotEmpty) {
                  await signupScreenViewModel.createUser(
                      fullnameController.text.toString(),
                      emailController.text.toString(),
                      passwordController.text.toString());
                  Get.offNamedUntil(
                      AppRoutes.LOGIN_SCREEN_PATH, (route) => false);
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
              child: const Text("Sign up"),
            ),
          ),
        ],
      );
    });
  }
}
