import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/locator.dart';
import '../../view_model/signup_screen_view_model.dart';

class EmailInputArea extends StatefulWidget {
  const EmailInputArea({super.key});

  @override
  State<EmailInputArea> createState() => _EmailInputAreaState();
}

class _EmailInputAreaState extends State<EmailInputArea> {
  final signupScreenViewModel = locator<SignupScreenViewModel>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 2.h),
              child:  TextField(
                controller: signupScreenViewModel.emailController,
                decoration: const InputDecoration(
                  labelText: "E-mail",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black54),
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
