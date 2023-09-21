import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/locator.dart';
import '../../view_model/signup_screen_view_model.dart';

class PasswordInputArea extends StatefulWidget {
  const PasswordInputArea({super.key});

  @override
  State<PasswordInputArea> createState() => _PasswordInputAreaState();
}

class _PasswordInputAreaState extends State<PasswordInputArea> {
  final signupScreenViewModel = locator<SignupScreenViewModel>();

   bool isObscured = false;
  void toggleObscurePassword() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: TextField(
              controller: signupScreenViewModel.passwordController,
              obscureText: isObscured ? false : true,
              decoration:  InputDecoration(
                labelText: "Password",
                border: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54),
                ),
                 suffixIcon: GestureDetector(
                onTap: toggleObscurePassword,
                child: isObscured
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
              ),
              ),
            ),
          )
        ],
      );
    });
  }
}
