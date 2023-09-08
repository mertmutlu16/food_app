import 'package:flutter/material.dart';

class PasswordInputArea extends StatefulWidget {
  final TextEditingController controller;
  final bool isObscured;
  final Function() onToggleObscure;

  PasswordInputArea({
    required this.controller,
    required this.isObscured,
    required this.onToggleObscure,
  });

  @override
  _PasswordInputAreaState createState() => _PasswordInputAreaState();
}

class _PasswordInputAreaState extends State<PasswordInputArea> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          controller: widget.controller,
          obscureText: widget.isObscured ? false : true,
          decoration: InputDecoration(
            labelText: "Şifre",
            border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black54),
            ),
            suffixIcon: GestureDetector(
              onTap: widget.onToggleObscure,
              child: widget.isObscured
                  ? const Icon(Icons.visibility)
                  : const Icon(Icons.visibility_off),
            ),
          ),
        ),
        Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(top: 8),
            child: const Text(
              "Şifremi unuttum",
              style: TextStyle(
                  color: Color.fromARGB(1000, 241, 0, 77), fontSize: 16),
            )),
      ],
    );
  }
}
