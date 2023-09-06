import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OrderTitleArea extends StatefulWidget {
  const OrderTitleArea({super.key});

  @override
  State<OrderTitleArea> createState() => _OrderTitleAreaState();
}

class _OrderTitleAreaState extends State<OrderTitleArea> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(1.h),
      child: Column(
        children: [
          const Text(
            "Hot Burger",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 1.h,
          ),
          const Text(
            "Burger Burger Burger Burger Burger",
            style: TextStyle(fontSize: 14),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Color.fromARGB(1000, 244, 0, 77),
                    ),
                    SizedBox(
                      width: 2.w,
                    ),
                    const Text("4.5"),
                  ],
                ),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(1000, 241, 0, 77),
                      foregroundColor: Colors.white,
                      elevation: 10,
                    ),
                    child: const Text("Sepete Ekle")),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
