import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ProfileCardArea extends StatefulWidget {
  const ProfileCardArea({super.key});

  @override
  State<ProfileCardArea> createState() => _ProfileCardAreaState();
}

class _ProfileCardAreaState extends State<ProfileCardArea> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.all(1.h),
          child: Card(
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(Icons.settings , color: Color.fromARGB(1000, 241, 0, 77),),
                  title: const Text("Profile Settings"),
                  onTap: (){},
                ),
                Container(
                  height: 1.h,
                  color: Colors.white,
                ),
                ListTile(
                  leading: const Icon(Icons.shopping_bag_outlined , color: Color.fromARGB(1000, 241, 0, 77),),
                  title: const Text("My Orders"),
                  onTap: (){},
        
                ),
                Container(
                  height: 1.h,
                  color: Colors.white,
                ),
                ListTile(
                  leading: const Icon(Icons.location_on_outlined , color: Color.fromARGB(1000, 241, 0, 77),),
                  title: const Text("My Adresses"),
                  onTap: (){},
        
                ),
                Container(
                  height: 1.h,
                  color: Colors.white,
                ),
                ListTile(
                  leading: const Icon(Icons.credit_card_outlined , color: Color.fromARGB(1000, 241, 0, 77),),
                  title: const Text("Saved Cards"),
                  onTap: (){},
        
                ),
                Container(
                  height: 1.h,
                  color: Colors.white,
                ),
                ListTile(
                  leading: const Icon(Icons.language_outlined , color: Color.fromARGB(1000, 241, 0, 77),),
                  title: const Text("Language"),
                  onTap: (){},
        
                ),
                 Container(
                  height: 1.h,
                  color: Colors.white,
                ),
                ListTile(
                  leading: const Icon(Icons.help_outline , color: Color.fromARGB(1000, 241, 0, 77),),
                  title: const Text("Help"),
                  onTap: (){},
        
                ),
                 Container(
                  height: 1.h,
                  color: Colors.white,
                ),
                ListTile(
                  leading: const Icon(Icons.logout_outlined , color: Color.fromARGB(1000, 241, 0, 77),),
                  title: const Text("Log out"),
                  onTap: (){},
        
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
