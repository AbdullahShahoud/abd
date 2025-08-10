// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/theming/font_style.dart';

class NotificationNormal extends StatelessWidget {
  NotificationNormal(this.notification);
  List notification;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      child: ListView.builder(
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(bottom: 6.h, left: 8.w, right: 8.w),
          child: Card(
            color: ColorManger.primary_ColorBlue,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 11.w),
              child: Column(
                children: [
                  Text(
                    textDirection: TextDirection.rtl,
                    maxLines: 3,
                    notification[index].created_at!,
                    style: FontStyleAndText.fontmedia,
                  ),
                  Row(
                    textDirection: TextDirection.rtl,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width.w - 100.w,
                        child: Text(
                          notification[index].message!,
                          textDirection: TextDirection.rtl,
                          style: FontStyleAndText.fontmedia,
                          maxLines: 3,
                          softWrap: true,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                        ),
                      ),
                      Spacer(),
                      Icon(
                        Icons.notifications_active,
                        size: 35,
                        color: ColorManger.primary_ColorYello,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        itemCount: notification.length,
      ),
    );
  }
}
