import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:food_app/detail_screen/view_model/detail_screen_view_model.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/locator.dart';

class OrderTitleArea extends StatefulWidget {
  final int incomingId;
  const OrderTitleArea({super.key, required this.incomingId});

  @override
  State<OrderTitleArea> createState() => _OrderTitleAreaState();
}

class _OrderTitleAreaState extends State<OrderTitleArea> {
  
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
    return Observer(builder: (_) {
      return Visibility(
        visible: !isInit,
        replacement: const Center(
          child: CircularProgressIndicator(
            valueColor:
                AlwaysStoppedAnimation<Color>(Color.fromARGB(1000, 241, 0, 77)),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(1.h),
          child: Column(
            children: [
              Text(
                detailScreenViewModel.singleFood?.foodName ?? '-',
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 1.h,
              ),
              Text(
                detailScreenViewModel.singleFood?.ingredients ?? '-',
                style: const TextStyle(fontSize: 14),
              ),
              Padding(
                padding: EdgeInsets.only(top: 2.h, bottom: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Color.fromARGB(1000, 244, 0, 77),
                        ),
                        SizedBox(
                          width: 2.w,
                        ),
                        Text(
                          "${detailScreenViewModel.singleFood!.rating}",
                        ),
                      ],
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(1000, 241, 0, 77),
                          foregroundColor: Colors.white,
                          elevation: 10,
                        ),
                        child: const Text("Sepete Ekle")),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
