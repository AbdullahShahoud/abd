import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../core/theming/color.dart';
import '../../../../core/theming/font_style.dart';

class NotificationNormallShinmmer extends StatelessWidget {
  const NotificationNormallShinmmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.h,
      child: ListView.builder(
        itemBuilder: (context, index) => Shimmer.fromColors(
          baseColor: ColorManger.lightGray,
          highlightColor: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
            child: Card(
              color: ColorManger.primary_ColorBlue,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 15.w),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        ' 12/3/2024',
                        style: FontStyleAndText.fontmedia,
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.notifications_active,
                          size: 40,
                          color: ColorManger.primary_ColorYello,
                        ),
                        Spacer(),
                        Text(
                          ' لقد قمت بأجتياز الاختبار بنجاح',
                          style: FontStyleAndText.fontmedia,
                          maxLines: 3,
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        itemCount: 6,
      ),
    );
  }
}
