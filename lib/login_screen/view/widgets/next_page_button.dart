
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/routes/app_routes.dart';

class LoginNextPageButton extends StatefulWidget {
  

  @override
  State<LoginNextPageButton> createState() => _LoginNextPageButtonState();
}

class _LoginNextPageButtonState extends State<LoginNextPageButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        
        ElevatedButton(
          onPressed: () {
            Get.offNamedUntil(
                AppRoutes.MAIN_SCREEN_PATH, (route) => false);
          },
          style: ElevatedButton.styleFrom(
            minimumSize:  Size(double.infinity, 8.h),
            backgroundColor: const Color.fromARGB(1000, 241, 0, 77),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: const Text("Continue"),
        ),
      ],
    );
  }
}
