// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/locator.dart';
import '../../view_model/login_screen_view_model.dart';

class PasswordInputArea extends StatefulWidget {
  @override
  _PasswordInputAreaState createState() => _PasswordInputAreaState();
}

class _PasswordInputAreaState extends State<PasswordInputArea> {
  final loginScreenViewModel = locator<LoginScreenViewModel>();

  bool isObscured = false;
  void toggleObscurePassword() {
    setState(() {
      isObscured = !isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Observer(builder: (_) {
          return TextField(
            controller: loginScreenViewModel.passwordTextController,
            obscureText: isObscured ? false : true,
            decoration: InputDecoration(
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
          );
        }),
        Container(
            alignment: Alignment.centerLeft,
            padding:  EdgeInsets.only(top: 1.h),
            child:  Text(
              "forgot password?",
              style: TextStyle(
                  color: const Color.fromARGB(1000, 241, 0, 77), fontSize: 13.sp),
            )),
        
      ],
    );
  }
}
