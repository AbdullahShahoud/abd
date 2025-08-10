// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:learn_programtion/core/theming/font_style.dart';

Widget OnBordingItem({
  required String text,
  required String image,
}) =>
    Stack(
      children: [
        Positioned(
          child: SvgPicture.asset(
            image,
            // height: double.infinity,
            // width: double.infinity,
            fit: BoxFit.fitHeight,
          ),
        ),
        Positioned(
          bottom: 20.h,
          left: 0,
          right: 0,
          child: Container(
            alignment: Alignment.bottomCenter,
            height: 270.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50), topRight: Radius.circular(50)),
              color: Color.fromARGB(235, 235, 235, 235),
            ),
            child: Column(children: [
              Padding(
                  padding: EdgeInsets.only(
                      bottom: 15.h, right: 18.0.w, left: 18.0.w, top: 35.h),
                  child: Text(
                    text,
                    textAlign: TextAlign.center,
                    style: FontStyleAndText.fontmedia,
                  )),
            ]),
          ),
        ),
      ],
    );
