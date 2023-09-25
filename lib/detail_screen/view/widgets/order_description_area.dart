// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, body_might_complete_normally_catch_error

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/locator.dart';
import '../../view_model/detail_screen_view_model.dart';

class OrderDescriptionArea extends StatefulWidget {
  final int incomingId;
  OrderDescriptionArea({ required this.incomingId});

  @override
  State<OrderDescriptionArea> createState() => _OrderDescriptionAreaState();
}

class _OrderDescriptionAreaState extends State<OrderDescriptionArea> {

  final detailScreenViewModel = locator<DetailScreenViewModel>();

  bool isInit = true;

  @override
  void didChangeDependencies() async {
    if (isInit) {
      await detailScreenViewModel
          .getSingleFood(widget.incomingId)
          .catchError((err) {
        debugPrint(err);
      });
      isInit = false;
      setState(() {});
    }
    super.didChangeDependencies();
  }



  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 43.01.h,
      child: Visibility(
        visible: !isInit,
        replacement: const Center(
          child:  CircularProgressIndicator(
            valueColor:
                AlwaysStoppedAnimation<Color>(Color.fromARGB(1000, 241, 0, 77)),
          ),
        ),
        child: Observer(
          builder : (_){
          return Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "Cook Time",
                      style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Preparation Time",
                      style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: .7.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "${detailScreenViewModel.singleFood!.cookTime}m",
                      style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
                    ),
                    Text(
                      "${detailScreenViewModel.singleFood!.servingTime}m",
                      style: TextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(3.h),
                child:  Text(
                    detailScreenViewModel.singleFood?.description ?? '-'
                    ),
              ),
            
              Padding(
                padding: EdgeInsets.all(1.5.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Ink(
                        decoration: const ShapeDecoration(
                          shape: CircleBorder(),
                          color: Colors.pink,
                        ),
                        child: const Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                    ),
            
                     Text(
                      "0",
                      style: TextStyle(fontSize: 16.sp),
                    ), //productCount
            
                    IconButton(
                      onPressed: () {},
                      icon: Ink(
                        decoration: const ShapeDecoration(
                          shape: CircleBorder(),
                          color: Colors.pink,
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          );}
        ),
      ),
    );
  }
}
