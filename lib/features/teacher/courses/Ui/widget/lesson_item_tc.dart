// ignore_for_file: unnecessary_null_comparison, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helper/spacing.dart';
import '../../../../../core/theming/color.dart';
import '../../../../../core/theming/font_style.dart';

class LessonItemTeacher extends StatefulWidget {
  LessonItemTeacher(
      {required this.image, required this.name, required this.lessonId});
  String image;
  String name;
  String lessonId;
  @override
  State<LessonItemTeacher> createState() => _LessonState();
}

class _LessonState extends State<LessonItemTeacher> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 5,
            left: 4,
            child: Row(
              children: [
                Icon(Icons.delete, size: 15, color: Colors.black),
                horizontalBox(15),
                Icon(Icons.edit, size: 15, color: Colors.black)
              ],
            )),
        Card(
          color: ColorManger.primary_ColorBlue,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
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
        ),
      ],
    );
  }
}
