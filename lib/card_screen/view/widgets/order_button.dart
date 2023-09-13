import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class OrderButton extends StatefulWidget {
  const OrderButton({super.key});

  @override
  State<OrderButton> createState() => _OrderButtonState();
}

class _OrderButtonState extends State<OrderButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.all( 1.h),
      child: Column(
        children: [
          ElevatedButton(onPressed: (){
    
          },
          style: ElevatedButton.styleFrom(
            minimumSize:  Size(double.infinity, 8.h),
            backgroundColor: const Color.fromARGB(1000, 241, 0, 77),
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),),
          ),
           child: const Text("Place Order")
           
           )
        ],
    
      ),
    );
  }
}
