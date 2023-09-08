
import 'package:flutter/material.dart';

class EmailInputArea extends StatefulWidget {
  const EmailInputArea({
    super.key,
  });

  @override
  State<EmailInputArea> createState() => _EmailInputAreaState();
}

class _EmailInputAreaState extends State<EmailInputArea> {
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
            "E-posta ve Şifreniz ile giriş yapın",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const TextField(
          decoration: InputDecoration(
            labelText: "E-posta",
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black54),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
