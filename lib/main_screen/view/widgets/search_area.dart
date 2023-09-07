
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SearchArea extends StatefulWidget {
  const SearchArea({super.key});

  @override
  State<SearchArea> createState() => _SearchAreaState();
}

class _SearchAreaState extends State<SearchArea> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.only(top: .5.h, bottom: .5.h ),
      child: SizedBox(
        height: 10.h,
        child: Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Yemek ara",
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black54),
                    ),
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
