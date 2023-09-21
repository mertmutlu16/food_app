import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignupTitleArea extends StatelessWidget {
  const SignupTitleArea({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
       const Text("Sign up" , style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
        Padding(
          padding: EdgeInsets.only(top: 1.h , bottom: 1.h),
          child: const Text("Create an account,It's free" , style: TextStyle(fontSize: 16),),
        ),

      ],
    );
  }
}