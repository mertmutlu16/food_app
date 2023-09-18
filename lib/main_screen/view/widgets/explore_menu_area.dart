import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:food_app/main_screen/view_model/main_screen_view_model.dart';
import 'package:food_app/utils/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
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

  /*
  Future<List<Foods>> getAllFoods() async {

    var url = "http://192.168.169.154:44333/api/foods";
    var response = await http.get(Uri.parse(url));
    
    


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
  }*/

  MainScreenViewModel mainScreenViewModel = MainScreenViewModel();

  @override
  void initState() {
    super.initState();
    mainScreenViewModel.getAllFoods();
  }

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
              child: Observer(
                builder: (_) {
                  if (foodsList.isEmpty) {
                    return SizedBox(
                      height: 10.h,
                      width: 36.w,
                      child: const CircularProgressIndicator(
                         valueColor: AlwaysStoppedAnimation<Color>(Color.fromARGB(1000, 241, 0, 77)),
                      ),
                    );
                  } else {
                    return ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: mainScreenViewModel.foodsList.length,
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Image.asset(
                                                  "images/hamburger.jpeg"))),
                                      Text(
                                        mainScreenViewModel
                                            .foodsList[index].foodName,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        });
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
