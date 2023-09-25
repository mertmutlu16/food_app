import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:food_app/utils/locator.dart';
import 'package:sizer/sizer.dart';

import '../../../login_screen/view_model/login_screen_view_model.dart';

class UserDefineArea extends StatefulWidget {
  const UserDefineArea({super.key});

  @override
  State<UserDefineArea> createState() => _UserDefineAreaState();
}

class _UserDefineAreaState extends State<UserDefineArea> {
  final loginScreenViewModel = locator<LoginScreenViewModel>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(1.h),
          height: 15.h,
          child: Card(
            shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 5.5.h,
                  backgroundColor: const Color.fromARGB(1000,241,0,77),
                  child: CircleAvatar(
                    radius: 5.h,
                    backgroundImage:  const AssetImage('images/yodaProfilePic.png'),
                  ),
                ),
                Observer(
                  builder: (_){
                  return Expanded(
                    child: Padding(
                      padding:  EdgeInsets.only(right:10.w),
                      child:  Text(loginScreenViewModel.user!.fullname, 
                      style: TextStyle(fontSize: 15.sp),
                      textAlign: TextAlign.center,),
                    ));}
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
