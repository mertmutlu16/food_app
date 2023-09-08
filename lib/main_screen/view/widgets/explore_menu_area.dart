
import 'package:flutter/material.dart';
import 'package:food_app/utils/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';


class ExploreMenuArea extends StatefulWidget {
  const ExploreMenuArea({
    super.key,
  });

  @override
  State<ExploreMenuArea> createState() => _ExploreMenuAreaState();
}

class _ExploreMenuAreaState extends State<ExploreMenuArea> {

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
      padding:  EdgeInsets.all(.8.h),
      child: SizedBox(
        height: 24.h,
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(1.h),
                child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Explore Menu",
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          fontSize: 14.sp, fontWeight: FontWeight.bold),
                    )),
              ),
            ),
                 Expanded(
                  flex: 4,
                  child: ListView.builder(
                    shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: foods.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.all(.1.h),
                          child: SizedBox(
                            width: 35.w,
                            child: GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoutes.DETAIL_SCREEN_PATH);
                              },
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: ClipRRect(
                                            borderRadius: BorderRadius.circular(20),
                                            child: Image.asset(
                                                "images/hamburger.jpeg"))),
                                    Text(
                                      foods[index],
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
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
