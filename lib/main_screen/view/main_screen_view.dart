import 'package:flutter/material.dart';
import 'package:food_app/main_screen/view/widgets/explore_menu_area.dart';
import 'package:food_app/main_screen/view/widgets/reccomendation_menu_area.dart';
import 'package:food_app/main_screen/view/widgets/search_area.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

import '../../utils/routes/app_routes.dart';

class MainScreenView extends StatefulWidget {
  const MainScreenView({super.key});

  @override
  State<MainScreenView> createState() => _MainScreenViewState();
}
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
class _MainScreenViewState extends State<MainScreenView> {
 

  
  int _selectedBottomNaviIndex =0;
 void _onItemTapped(int index) {
    setState(() {
      _selectedBottomNaviIndex = index;

      switch (_selectedBottomNaviIndex) {
        case 0:
          Get.toNamed(AppRoutes.MAIN_SCREEN_PATH);
        case 1:
          Get.toNamed(AppRoutes.FAVORITES_SCREEN_PATH);
        
        case 2:
          Get.toNamed(AppRoutes.CARD_SCREEN_PATH);
         
          break;
        default:
      }
      
      
    });
  }


  @override
  Widget build(BuildContext context) {

    
    return Scaffold(

      appBar: buildAppBar(),

      resizeToAvoidBottomInset: false, // set it to false
      body: SingleChildScrollView(child: buildBody()), 
        
      
      bottomNavigationBar: buildBottomNavigatonBar(),
    );
  }

  
Widget buildBottomNavigatonBar() {
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

  AppBar buildAppBar(){
  return AppBar(
    leading: Image.asset("images/main_screen_image-removebg.png"),
        title: Text(
          "FOOD APP",
          style: TextStyle(
              fontSize: 35.sp, color: const Color.fromARGB(255, 128, 3, 45)),
        ),
        centerTitle: true,
      
  );
}

Widget buildBody(){
  return const Column(
    children: [

      
      SearchArea(),
      ExploreMenuArea(),
      ReccomendationMenuArea(),

      
      

    ],
  );
}








