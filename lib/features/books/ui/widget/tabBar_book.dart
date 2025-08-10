// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:learn_programtion/features/profile/logic/profile_cubit/cubit/profile_and_notification_cubit.dart';
import '../../../../core/theming/color.dart';
import '../../../../core/theming/font_style.dart';
import '../../../search/search_home.dart';

class TabBarBook extends StatefulWidget {
  const TabBarBook({super.key});

  @override
  State<TabBarBook> createState() => _TabBarhomeState();
}

class _TabBarhomeState extends State<TabBarBook> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipPath(
          clipper: OvalBottomBorderClipper(),
          child: Container(
            height: 225.h,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorManger.primary_ColorBlue,
            ),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 6.h),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 8.h),
                      child: Image.asset(
                        'assets/image/logo.png',
                        width: 130.w,
                        height: 135.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        showSearch(
                            context: context,
                            delegate: SearchBookName(
                                books: ProfileAndNotificationCubit.get(context)
                                    .book,
                                history: ['mm', 'tt', 'yy']));
                      },
                      child: Container(
                        height: 40.h,
                        width: MediaQuery.of(context).size.width - 70,
                        child: TextFormField(
                          enabled: false,
                          keyboardType: TextInputType.name,
                          validator: (value) {
                            if (value!.isEmpty || value == null) {
                              return 'المدخل خاطئ';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10.h, horizontal: 10.w),
                              prefixIcon: Icon(
                                Icons.search,
                                size: 30,
                                color: ColorManger.font,
                              ),
                              hintText: 'بحث',
                              hintStyle: FontStyleAndText.textfrom,
                              disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(
                                      color: ColorManger.primary_ColorYello)),
                              focusedErrorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  borderSide: BorderSide(color: Colors.red))),
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                            color: ColorManger.font,
                          ),
                        ),
                      ),
                    )
                  ],
                )),
          )),
    ]);
  }
}
