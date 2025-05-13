import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/theming/font_style.dart';

import '../../../core/theming/color.dart';

Widget Item(BuildContext context, String text) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 65.h,
    decoration: BoxDecoration(
      color: ColorManger.primary_ColorYello,
      borderRadius: BorderRadius.circular(15),
    ),
    padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
    child: Text(
      textDirection: TextDirection.rtl,
      text,
      overflow: TextOverflow.ellipsis,
      maxLines: 3,
      style: FontStyleAndText.homefonttext,
      textAlign: TextAlign.right,
    ),
  );
}
