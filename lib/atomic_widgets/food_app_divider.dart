import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class FoodAppDivider extends StatelessWidget {
  const FoodAppDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return   Container(
                width: double.infinity,
                height: .1.h,
                color: Colors.black54,
              );
  }
}