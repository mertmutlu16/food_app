import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_app/utils/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:http/http.dart' as http;
import '../../../utils/models/foods.dart';

class ExploreMenuArea extends StatefulWidget {
  const ExploreMenuArea({
    super.key,
  });

  @override
  State<ExploreMenuArea> createState() => _ExploreMenuAreaState();
}

class _ExploreMenuAreaState extends State<ExploreMenuArea> {
  List<Foods> foodsList = [];

  //static const _apiRoute="https://localhost:44333/api/foods";

  Future<List<Foods>> getAllFoods() async {

    
    //var url = "https://10.0.2.2:8000/api/foods";
    var url = "http://192.168.169.154:44333/api/foods";
    //var url = "https://192.168.169.154:44333/api/foods";
    var response = await http.get(Uri.parse(url));
    
    //.catchError((err){debugPrint(err.toString());});
    


    if (response.statusCode == 200) {
      var data = json.decode(response.body).toList();

      for (var item in data) {
        var food = Foods.fromJson(item);
        foodsList.add(food);
      } 
        setState(() {
          
        });
      return foodsList;
    } else {
      throw Exception('Veri çekme başarısız: ${response.statusCode}');
    }
  }
  
  @override
  void initState(){
    super.initState();
    getAllFoods();
  }

/*
  var foods = [
    "Kuzu Şiş Kebap",
    "Deniz Mahsulleri Kavurma",
    "Tost",
    "Sushi",
    "Baklava",
    "Tavuk Izgara",
    "Hamburger",
    "Makarna"
  ];*/

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(.8.h),
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
                  itemCount: foodsList.length,
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
                                  foodsList[index].foodName,
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
