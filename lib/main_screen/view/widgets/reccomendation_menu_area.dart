import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/routes/app_routes.dart';

class ReccomendationMenuArea extends StatefulWidget {
  const ReccomendationMenuArea({
    super.key,
  });

  @override
  State<ReccomendationMenuArea> createState() => _ReccomendationMenuAreaState();
}

class _ReccomendationMenuAreaState extends State<ReccomendationMenuArea> {
  var foods = [
    "Hamburger",
    "Makarna",
    "Tost",
    "Sushi",
    "Baklava",
    "Tavuk Izgara",
    "Hamburger",
    "Makarna"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(.8.h),
      child: SizedBox(
        height: 45.h,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(1.h),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Reccomendation",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
            Expanded(
              flex: 5,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1,
                  ),
                  itemCount: foods.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.DETAIL_SCREEN_PATH);
                      },
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: EdgeInsets.all(.3.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Expanded(
                                  flex: 3,
                                  child: ClipRRect(
                                      borderRadius: BorderRadius.circular(20),
                                      child: Image.asset(
                                        "images/hamburger.jpeg", /* height: 200,*/
                                      ))),
                              Expanded(
                                  child: Text(
                                foods[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold),
                              )),
                              const Expanded(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text("180 TL"),
                                    Row(
                                      children: [
                                        Text("4.5"),
                                        Icon(
                                          Icons.star,
                                          color:
                                              Color.fromARGB(1000, 244, 0, 77),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
