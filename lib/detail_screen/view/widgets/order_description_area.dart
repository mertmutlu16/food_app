import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OrderDescriptionArea extends StatefulWidget {
  const OrderDescriptionArea({super.key});

  @override
  State<OrderDescriptionArea> createState() => _OrderDescriptionAreaState();
}

class _OrderDescriptionAreaState extends State<OrderDescriptionArea> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "Cook Time",
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
              ),
              Text(
                "Preparation Time",
                style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: .7.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                "20m",
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
              ),
              Text(
                "25m",
                style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(3.h),
          child: const Text(
              " Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make "),
        ),
        Padding(
          padding: EdgeInsets.all(2.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: Ink(
                  decoration: const ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.pink,
                  ),
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                  ),
                ),
              ),

              const Text(
                "0",
                style: TextStyle(fontSize: 20),
              ), //productCount

              IconButton(
                onPressed: () {},
                icon: Ink(
                  decoration: const ShapeDecoration(
                    shape: CircleBorder(),
                    color: Colors.pink,
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
