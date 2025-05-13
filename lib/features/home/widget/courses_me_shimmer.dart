import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/theming/color.dart';
import 'package:shimmer/shimmer.dart';

import '../../../core/helper/spacing.dart';
import '../../../core/theming/font_style.dart';

class CoursesMeShimmer extends StatelessWidget {
  const CoursesMeShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 15.w),
          child: Text(
            'كورساتي',
            style: FontStyleAndText.fontbold,
          ),
        ),
        verticalBox(10.h),
        SizedBox(
          height: 150.h,
          child: ListView.builder(
            itemBuilder: (context, index) => Shimmer.fromColors(
                baseColor: ColorManger.lightGray,
                highlightColor: Colors.white,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                  child: Stack(children: [
                    Container(
                      width: 200.w,
                      height: 200.h,
                      foregroundDecoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(25)),
                          image: DecorationImage(
                            image: AssetImage('assets/image/unnamed.png'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      width: 200.w,
                      height: 200.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.center,
                          colors: [
                            Color.fromRGBO(0, 0, 0, 0),
                            Color.fromRGBO(0, 0, 0, 0.7),
                          ],
                          stops: [0.0, 0.8437],
                          // colors: [
                          //  Color.fromARGB(52, 50, 50, 50),
                          //  Color.fromARGB(2, 50, 50, 50),
                          // ],
                          // stops: [
                          //    1.5,
                          //    0.25,
                          //   //  0.2
                          // ]
                        ),
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 8,
                      bottom: 6,
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('مبتدئ Flutter \n كورس برمجة',
                                style: FontStyleAndText.fontmedia
                                    .copyWith(color: Colors.white)),
                            verticalBox(8.h),
                            Card(
                              color: Colors.grey,
                              child: Padding(
                                padding: const EdgeInsets.all(3.0),
                                child: Text('اسم المدرس',
                                    style: FontStyleAndText.smallestTouch
                                        .copyWith(
                                            color: ColorManger.font,
                                            fontSize: 12)),
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  '30%',
                                  style: FontStyleAndText.fontsmall
                                      .copyWith(color: Colors.white),
                                ),
                                horizontalBox(8.w),
                                Container(
                                  width: 80.w,
                                  height: 10.h,
                                  child: LinearProgressIndicator(
                                    value: 0.40,
                                    backgroundColor: Colors.grey,
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                        ColorManger.primary_ColorBlue),
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                    )
                  ]),
                )),
            itemCount: 5,
            scrollDirection: Axis.horizontal,
          ),
        )
      ],
    );
  }
}
