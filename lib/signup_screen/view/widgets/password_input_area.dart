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

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 2.h),
            child: TextField(
              controller: signupScreenViewModel.passwordController,
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black54),
                ),
              ),
            ),
          )
        ],
      );
    });
  }
}
