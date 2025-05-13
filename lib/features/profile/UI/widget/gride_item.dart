import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/theming/font_style.dart';

Widget GradeItem(BuildContext context, String grade) {
  return Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: 60.h,
    decoration: BoxDecoration(
      color: ColorManger.primary_ColorYello,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Text(
      textDirection: TextDirection.rtl,
      grade,
      style: FontStyleAndText.textfrom,
    ),
  );
}
