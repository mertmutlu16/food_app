import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/routes/app_routes.dart';

class CardArea extends StatefulWidget {
  const CardArea({super.key});

  @override
  State<CardArea> createState() => _CardAreaState();
}

class _CardAreaState extends State<CardArea> {
  var foods = [
    "Hamburger",
    "Makarna",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 82.h,
          child: ListView.builder(
            itemCount: foods.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(
                    left: .8.h, right: .8.h, top: .1.h, bottom: .1.h),
                height: 20.h,
                child: GestureDetector(
                  onTap:(){
                  Get.toNamed(AppRoutes.DETAIL_SCREEN_PATH);

                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [
                        Expanded(
                            flex: 2,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: Image.asset(
                                  "images/hamburger.jpeg",
                                  alignment: Alignment.centerLeft,
                                ))),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                foods[index],
                                style:
                                    const TextStyle(fontWeight: FontWeight.bold),
                              ),
                              const Text("180 TL"),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  
                                  Icon(Icons.star , color: Color.fromARGB(1000, 244, 0, 77), ),
                                  Text("4"),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child:IconButton(
                            onPressed: (){
                
                              //Navigate to Cart 
                            },
                             icon: const Icon(Icons.shopping_cart_outlined , color: Color.fromARGB(1000, 244, 0, 77),)) 
                        )
                
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
