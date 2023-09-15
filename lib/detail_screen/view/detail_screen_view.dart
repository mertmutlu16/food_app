import 'package:flutter/material.dart';
import 'package:food_app/atomic_widgets/food_app_divider.dart';
import 'package:food_app/detail_screen/view/widgets/order_description_area.dart';
import 'package:food_app/detail_screen/view/widgets/order_title_area.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../utils/routes/app_routes.dart';


class DetailScreenView extends StatefulWidget {
  const DetailScreenView({super.key});

  @override
  State<DetailScreenView> createState() => _DetailScreenViewState();
}

class _DetailScreenViewState extends State<DetailScreenView> {
  int _selectedBottomNaviIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedBottomNaviIndex = index;

      switch (_selectedBottomNaviIndex) {
        case 0:
          Get.toNamed(AppRoutes.MAIN_SCREEN_PATH);
        case 1:
          Get.toNamed(AppRoutes.FAVORITES_SCREEN_PATH);
        case 2:
          Get.toNamed(AppRoutes.SHOPPING_CARD_SCREEN_PATH);
          break;
        case 3:
          Get.toNamed(AppRoutes.PROFILE_SCREEN_PATH);
         
          break;
        default:
      }
      
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context),
      body: buildBody(),
      bottomNavigationBar: buildBottomNavigatorBar(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back)),
      actions: [
        Padding(
          padding:  EdgeInsets.only(right: 1.h),
          child: IconButton(
            onPressed: (){},
             icon: const Icon(Icons.favorite_outline),
             color: const Color.fromARGB(1000, 241, 0, 77),
             iconSize: 4.h,
             ),
        )
      ],
          
    );
  }

  Widget buildBody() {
    return Center(
      child: Column(
        children: [
          Image.asset("images/hamburger.jpeg"),
          const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OrderTitleArea(),
              FoodAppDivider(),
              OrderDescriptionArea(),
              //ItemCounter(),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildBottomNavigatorBar() {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_cart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
      currentIndex: _selectedBottomNaviIndex,
      selectedItemColor: const Color.fromARGB(1000, 241, 0, 77),
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      onTap: _onItemTapped,
    );
  }

}
