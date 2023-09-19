import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:food_app/main_screen/view_model/main_screen_view_model.dart';
import 'package:food_app/utils/models/foods.dart';
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
  List<Foods> foodsList = [];
  MainScreenViewModel mainScreenViewModel = MainScreenViewModel();

  _ReccomendationMenuAreaState() {
    mainScreenViewModel.getAllFoods();
  }

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
            Observer(
              builder: (_) {
                if (mainScreenViewModel.foodsList.isEmpty) {
                  return Padding(
                    padding: EdgeInsets.only(top: 16.h, bottom: 16.h),
                    child: const CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                          Color.fromARGB(1000, 241, 0, 77)),
                    ),
                  );
                } else {
                  return Expanded(
                    flex: 5,
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1,
                        ),
                        itemCount: mainScreenViewModel.foodsList.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              Get.toNamed(
                                AppRoutes.DETAIL_SCREEN_PATH,
                                arguments: mainScreenViewModel.foodsList[index].id,
                              );
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
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            child: Image.asset(
                                              "images/hamburger.jpeg", /* height: 200,*/
                                            ))),
                                    Expanded(
                                        child: Text(
                                      mainScreenViewModel
                                          .foodsList[index].foodName,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold),
                                    )),
                                    Expanded(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                              "${mainScreenViewModel.foodsList[index].price} TL"),
                                          Row(
                                            children: [
                                              Text(mainScreenViewModel
                                                  .foodsList[index].rating
                                                  .toString()),
                                              const Icon(
                                                Icons.star,
                                                color: Color.fromARGB(
                                                    1000, 244, 0, 77),
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
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
