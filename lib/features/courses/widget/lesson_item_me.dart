import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/font_style.dart';

Widget LessonItemMe({
  required BuildContext context,
  required String image,
  required String text,
  required bool finish,
}) {
  return Card(
    color: ColorManger.primary_ColorBlue,
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            finish ? Icons.check : Icons.lock_open_rounded,
            size: 50,
            color: finish ? Colors.green : ColorManger.primary_ColorYello,
          ),
          Text(
            textDirection: TextDirection.rtl,
            text,
            style: FontStyleAndText.fontmedia,
          ),
          Visibility(
            visible: image.isEmpty ? false : true,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                  height: 100.h,
                  width: 100.w,
                  fit: BoxFit.cover,
                  image: AssetImage(image)),
            ),
          )
        ],
      ),
    ),
  );
}
