import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/theming/color.dart';
import 'package:learn_programtion/features/teacher/notifaction/UI/home_notification.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';

import '../../../profile/UI/profile.dart';
import '../../courses/Ui/home_courses.dart';

class HomePageTeacher extends StatefulWidget {
  HomePageTeacher({super.key});

  @override
  State<HomePageTeacher> createState() => _HomePageState();
}

class _HomePageState extends State<HomePageTeacher>
    with TickerProviderStateMixin {
  MotionTabBarController? _motionTabBarController2;

  @override
  void initState() {
    super.initState();
    _motionTabBarController2 = MotionTabBarController(
      initialIndex: 1,
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();

    _motionTabBarController2!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MotionTabBar(
          controller: _motionTabBarController2,
          initialSelectedTab: 'home',
          useSafeArea: true,
          labels: ['profile', 'home', 'notifaction'],
          icons: const [
            Icons.person_2_rounded,
            Icons.home,
            Icons.notifications_active
          ],
          tabSize: 55.sp,
          tabBarHeight: 70.h,
          textStyle: const TextStyle(
            fontSize: 15,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          tabIconColor: ColorManger.primary_ColorBlue,
          tabIconSize: 45.sp,
          tabIconSelectedSize: 50.sp,
          tabSelectedColor: ColorManger.primary_ColorBlue,
          tabIconSelectedColor: Colors.white,
          tabBarColor: ColorManger.primary_ColorYello,
          onTabItemSelected: (int value) {
            setState(() {
              _motionTabBarController2!.index = value;
            });
          },
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _motionTabBarController2,
          children: [
            Profile(
              check: false,
            ),
            CoursesScreen(),
            NotificationScreen()
          ],
        ));
  }
}
