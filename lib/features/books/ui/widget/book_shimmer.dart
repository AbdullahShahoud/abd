import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/theming/color.dart';
import 'package:shimmer/shimmer.dart';

class BookShinmmer extends StatelessWidget {
  const BookShinmmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 650.h,
        child: GridView.count(
            scrollDirection: Axis.vertical,
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 3 / 5,
            children: List.generate(
              6,
              (index) => InkWell(
                onTap: () {},
                child: Shimmer.fromColors(
                  baseColor: ColorManger.lightGray,
                  highlightColor: Colors.white,
                  child: Container(
                    height: 50.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/image/unnamed.png',
                          ),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
            )));
  }
}
