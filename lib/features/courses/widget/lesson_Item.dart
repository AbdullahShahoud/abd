// ignore_for_file: unnecessary_null_comparison, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/features/login/Ui/widget/forget_password.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/font_style.dart';

class LessonItem extends StatefulWidget {
  LessonItem(
      {required this.image,
      required this.name,
      required this.check,
      required this.id,
      required this.lessonId});
  String image;
  String name;
  bool check;
  String id;
  String lessonId;
  @override
  State<LessonItem> createState() => _LessonState();
}

class _LessonState extends State<LessonItem> {
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
              chek! ? Icons.lock_open_rounded : Icons.lock,
              size: 50,
              color: ColorManger.primary_ColorYello,
            ),
            Text(
              widget.name,
              textDirection: TextDirection.rtl,
              style: FontStyleAndText.fontmedia,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image(
                  height: 100.h,
                  width: 100.w,
                  fit: BoxFit.cover,
                  image: AssetImage(widget.image)),
            )
          ],
        ),
      ),
    );
  }
}
