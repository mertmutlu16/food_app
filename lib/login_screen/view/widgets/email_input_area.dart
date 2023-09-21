import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sizer/sizer.dart';
import '../../../utils/locator.dart';
import '../../view_model/login_screen_view_model.dart';

class EmailInputArea extends StatefulWidget {
  const EmailInputArea({
    super.key,
  });

  get emailController => null;

  @override
  State<EmailInputArea> createState() => _EmailInputAreaState();
}

class _EmailInputAreaState extends State<EmailInputArea> {
  final loginScreenViewModel = locator<LoginScreenViewModel>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(
          height: 9.h,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child:  Text(
            "Login with your E-mail and Password",
            style: TextStyle(
              fontSize: 15.4.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
         SizedBox(
          height: 2.6.h,
        ),
        Observer(builder: (_) {
          return TextField(
            controller: loginScreenViewModel.emailTextController,
            decoration: const InputDecoration(
              labelText: "E-mail",
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black54),
              ),
            ),
          );
        }),
         SizedBox(
          height: 2.5.h,
        ),
      ],
    );
  }
}
