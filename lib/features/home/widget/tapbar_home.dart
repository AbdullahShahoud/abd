// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:learn_programtion/features/courses/logic/cubit/cubit/coursees_cubit.dart';
import '../../../core/helper/spacing.dart';
import '../../../core/theming/color.dart';
import '../../../core/theming/font_style.dart';
import '../../search/search_home.dart';

class TabBarhome extends StatefulWidget {
  const TabBarhome({super.key});

  @override
  State<TabBarhome> createState() => _TabBarhomeState();
}

class _TabBarhomeState extends State<TabBarhome> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipPath(
          clipper: OvalBottomBorderClipper(),
          child: Container(
            height: 225.h,
            width: double.infinity.w,
            decoration: BoxDecoration(
              color: ColorManger.primary_ColorBlue,
            ),
            child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 2.h),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 5.h,bottom: 5.h),
                      child: Image(
                        image: AssetImage('assets/image/logo.png'),
                        width: 130.w,
                        height: 135.h,
                        fit: BoxFit.cover,
                      ),
                    ),
                    verticalBox(7.h),
                    Container(
                      height: 45.h,
                      width: MediaQuery.of(context).size.width - 70.w,
                      child: TextFormField(
                        onTap: () {
                          showSearch(
                              context: context,
                              delegate: SearchCourseName(
                                  courses: CourseesCubit.get(context).courses,
                                  history: ['mm', 'tt', 'yy']));
                        },
                        enabled: false,
                        keyboardType: TextInputType.name,
                        validator: (value) {
                          if (value!.isEmpty || value == null) {
                            return 'الرجاء ادخال البريد الالكتروني';
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
                          fontSize: 24.sp,
                          fontWeight: FontWeight.w400,
                          color: ColorManger.font,
                        ),
                      ),
                    )
                  ],
                )),
          )),
    ]);
  }
}
