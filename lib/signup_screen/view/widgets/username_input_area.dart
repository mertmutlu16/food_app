import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sizer/sizer.dart';
import '../../../utils/locator.dart';
import '../../view_model/signup_screen_view_model.dart';

class UsernameInputArea extends StatefulWidget {
  const UsernameInputArea({super.key});

  @override
  State<UsernameInputArea> createState() => _UsernameInputAreaState();
}

class _UsernameInputAreaState extends State<UsernameInputArea> {
  final signupScreenViewModel = locator<SignupScreenViewModel>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 8.h),
              child: TextField(
                controller: signupScreenViewModel.fullnameController,
                decoration: const InputDecoration(
                  labelText: "Username",
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
