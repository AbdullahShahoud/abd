import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/theming/color.dart';
import '../../core/theming/font_style.dart';

Widget button({
  Color color = ColorManger.primary_ColorYello,
  double paddingV = 20,
  double paddingH = 130,
  required String text,
  required VoidCallback function,
}) =>
    ElevatedButton(
      onPressed: function,
      child: Text(
        text,
        style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.bold,
            color: ColorManger.font),
      ),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        backgroundColor: color,
        padding:
            EdgeInsets.symmetric(vertical: paddingV.h, horizontal: paddingH.w),
        elevation: 0.7,
        textStyle: FontStyleAndText.buttonfonttext,
        //side:  BorderSide(color: Colors.white, width: 2, style: BorderStyle.solid),
      ),
    );
