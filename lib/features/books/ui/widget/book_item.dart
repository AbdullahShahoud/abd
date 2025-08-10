import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/theming/font_style.dart';

Widget BookItem({
  required String name,
  required String auth,
  required String url,
  required int id,
  // required String image,
}) {
  return Container(
    height: 250.h,
    width: 100.w,
    decoration: BoxDecoration(
      image: DecorationImage(
          image: AssetImage(
            'assets/image/images.png'
          ),
          fit: BoxFit.cover),
      borderRadius: BorderRadius.circular(25),
    ),
    child: Stack(children: [
      Positioned(
          bottom: 15.h,
          right: 25.w,
          left: 25.w,
          child: Center(
            child: Text(
              name,
              textDirection: TextDirection.rtl,
              style: FontStyleAndText.fontmedia,
            ),
          ))
    ]),
  );
}
