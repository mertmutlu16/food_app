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
                  leading: Icon(Icons.settings , color: Color.fromARGB(1000, 241, 0, 77),),
                  title: Text("Profile Settings"),
                  onTap: (){},
                ),
                Container(
                  height: 1.h,
                  color: Colors.white,
                ),
                ListTile(
                  leading: Icon(Icons.shopping_bag_outlined , color: Color.fromARGB(1000, 241, 0, 77),),
                  title: Text("My Orders"),
                  onTap: (){},
        
                ),
                Container(
                  height: 1.h,
                  color: Colors.white,
                ),
                ListTile(
                  leading: Icon(Icons.location_on_outlined , color: Color.fromARGB(1000, 241, 0, 77),),
                  title: Text("My Adresses"),
                  onTap: (){},
        
                ),
                Container(
                  height: 1.h,
                  color: Colors.white,
                ),
                ListTile(
                  leading: Icon(Icons.credit_card_outlined , color: Color.fromARGB(1000, 241, 0, 77),),
                  title: Text("Saved Cards"),
                  onTap: (){},
        
                ),
                Container(
                  height: 1.h,
                  color: Colors.white,
                ),
                ListTile(
                  leading: Icon(Icons.language_outlined , color: Color.fromARGB(1000, 241, 0, 77),),
                  title: Text("Language"),
                  onTap: (){},
        
                ),
                 Container(
                  height: 1.h,
                  color: Colors.white,
                ),
                ListTile(
                  leading: Icon(Icons.help_outline , color: Color.fromARGB(1000, 241, 0, 77),),
                  title: Text("Help"),
                  onTap: (){},
        
                ),
                 Container(
                  height: 1.h,
                  color: Colors.white,
                ),
                ListTile(
                  leading: Icon(Icons.logout_outlined , color: Color.fromARGB(1000, 241, 0, 77),),
                  title: Text("Log out"),
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
