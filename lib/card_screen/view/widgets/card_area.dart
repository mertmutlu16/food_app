import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
          height: 72.h,
          child: ListView.builder(
            itemCount: foods.length,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsets.only(
                    left: .8.h, right: .8.h, top: .1.h, bottom: .1.h),
                height: 20.h,
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
                        flex: 2,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              foods[index],
                               style:
                                   TextStyle(fontWeight: FontWeight.bold , fontSize: 15.sp ),
                            ),
                            const Text("180 TL"),
                            Row(
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
                          ],
                        ),
                      ),
                    ],
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
