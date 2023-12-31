import 'package:flutter/material.dart';
import 'package:food_app/favorites_screen/view/widgets/card_area.dart';
import 'package:get/get.dart';
import '../../utils/routes/app_routes.dart';

class FavoritesScreenView extends StatefulWidget {
  const FavoritesScreenView({super.key});

  @override
  State<FavoritesScreenView> createState() => _FavoritesScreenViewState();
}

class _FavoritesScreenViewState extends State<FavoritesScreenView> {
  int _selectedBottomNaviIndex = 1;
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
      appBar: buildAppBar(),
      body: buildBody(),
      bottomNavigationBar: buildBottomNavigatorBar(),
    );
  }



  AppBar buildAppBar( ){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading:IconButton(
        onPressed: (){
          Get.back();
        },
        icon: const Icon(Icons.arrow_back)),
        centerTitle: true,
        title: const Text("Favorites" , style: TextStyle(fontWeight: FontWeight.bold ), ),
    );
  }

  Widget buildBody(){
    return
     const CardArea();
    
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
