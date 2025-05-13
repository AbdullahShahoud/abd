// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/font_style.dart';

class LevelItemMe extends StatelessWidget {
  LevelItemMe({
    required this.image,
    required this.name,
    required this.finished,
  });
  String image;
  String name;
  bool finished;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: ColorManger.primary_ColorBlue,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(
              finished ? Icons.check : Icons.lock_open_rounded,
              size: 50,
              color: finished ? Colors.green : ColorManger.primary_ColorYello,
            ),
            Text(
              name,
              textDirection: TextDirection.rtl,
              style: FontStyleAndText.fontmedia,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                  height: 100.h,
                  width: 100.w,
                  fit: BoxFit.cover,
                  image: AssetImage(image)),
            )
          ],
        ),
      ),
    );
  }
}
