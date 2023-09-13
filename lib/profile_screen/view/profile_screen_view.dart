import 'package:flutter/material.dart';
import 'package:food_app/profile_screen/view/widgets/profile_card_area.dart';
import 'package:food_app/profile_screen/view/widgets/user_define_area.dart';
import 'package:get/get.dart';

import '../../utils/routes/app_routes.dart';

class ProfileScreenView extends StatefulWidget {
  const ProfileScreenView({super.key});

  @override
  State<ProfileScreenView> createState() => _ProfileScreenViewState();
}

class _ProfileScreenViewState extends State<ProfileScreenView> {
  

  
  int _selectedBottomNaviIndex = 3;
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
      appBar:buildAppBar(),
      body:buildBody(),
      bottomNavigationBar: buildBottomNavigationBar(),
    );


  }


  AppBar buildAppBar(){
    return AppBar(
      title: const  Text("Profile" , style: TextStyle(fontWeight: FontWeight.bold),),
      centerTitle: true,
      leading: IconButton(onPressed: (){
          Get.back();
      },
      icon: const Icon(Icons.arrow_back), ),
    );
  }


  Widget buildBody(){
    return const Column(
      children: [
        UserDefineArea(),
        ProfileCardArea(),
 
      ],
    );
  }


  Widget buildBottomNavigationBar() {
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