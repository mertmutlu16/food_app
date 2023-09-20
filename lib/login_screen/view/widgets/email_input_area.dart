import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

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
        const SizedBox(
          height: 70,
        ),
        Container(
          alignment: Alignment.centerLeft,
          child: const Text(
            "Login with your E-mail and Password",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
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
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
