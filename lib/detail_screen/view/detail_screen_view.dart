import 'package:flutter/material.dart';
import 'package:food_app/atomic_widgets.dart/food_app_divider.dart';
import 'package:food_app/detail_screen/view/widgets/order_description_area.dart';
import 'package:food_app/detail_screen/view/widgets/order_title_area.dart';


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
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back)),
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
              OrderDescriptionArea()
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
