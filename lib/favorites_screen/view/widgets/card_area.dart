import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import '../../../login_screen/view_model/login_screen_view_model.dart';
import '../../../utils/locator.dart';
import '../../../utils/routes/app_routes.dart';
import '../../view_model/favorite_screen_view_model.dart';

class CardArea extends StatefulWidget {
  const CardArea({super.key});

  @override
  State<CardArea> createState() => _CardAreaState();
}

class _CardAreaState extends State<CardArea> {
  final favoriteScreenViewModel = locator<FavoritesScreenViewModel>();
  final loginScreenViewModel = locator<LoginScreenViewModel>();

  bool isInit = true;

  @override
  void didChangeDependencies() async {
    if (isInit) {
      await favoriteScreenViewModel
          .getFavoriteFoods(loginScreenViewModel.user!.id);
      isInit = false;
      setState(() {});
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 82.h,
          child: Visibility(
            visible: !isInit,
            replacement: const Center(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                    Color.fromARGB(1000, 241, 0, 77)),
              ),
            ),
            child: Observer(
              builder: (_) {
                return ListView.builder(
                  itemCount: favoriteScreenViewModel.favoriteFoodsList.length,
                  itemBuilder: (context, index) {
                    return Container(
                      padding: EdgeInsets.only(
                          left: .8.h, right: .8.h, top: .1.h, bottom: .1.h),
                      height: 20.h,
                      child: GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.DETAIL_SCREEN_PATH,
                          arguments: favoriteScreenViewModel.favoriteFoodsList[index].id );
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
                                child: Padding(
                                  padding: EdgeInsets.only(left: 2.h),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        favoriteScreenViewModel
                                            .favoriteFoodsList[index].foodName,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                          " ${favoriteScreenViewModel.favoriteFoodsList[index].price} TL"
                                              .toString()),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            color: Color.fromARGB(
                                                1000, 244, 0, 77),
                                          ),
                                          Text(favoriteScreenViewModel
                                              .favoriteFoodsList[index].rating
                                              .toString()),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                  flex: 1,
                                  child: IconButton(
                                      onPressed: () async {
                                        await favoriteScreenViewModel
                                            .deleteFromFavorites(
                                                loginScreenViewModel.user!.id,
                                                favoriteScreenViewModel
                                                    .favoriteFoodsList[index]
                                                    .id);

                                        favoriteScreenViewModel
                                            .favoriteFoodsList
                                            .removeAt(index);
                                      },
                                      icon: const Icon(
                                        Icons.delete_outline_rounded,
                                        color: Color.fromARGB(1000, 244, 0, 77),
                                      )))
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        )
      ],
    );
  }
}
