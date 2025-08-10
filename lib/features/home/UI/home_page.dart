import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:learn_programtion/core/theming/color.dart';
import '../../books/ui/home_book.dart';
import '../../notification/Ui/notification.dart';
import '../../profile/UI/profile.dart';
import 'package:motion_tab_bar_v2/motion-tab-bar.dart';
import 'package:motion_tab_bar_v2/motion-tab-controller.dart';
import 'home.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  MotionTabBarController? _motionTabBarController;

  @override
  void initState() {
    super.initState();
    _motionTabBarController = MotionTabBarController(
      initialIndex: 1,
      length: 4,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();

    _motionTabBarController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: MotionTabBar(
          controller: _motionTabBarController,
          initialSelectedTab: 'home',
          useSafeArea: true,
          labels: ['profile', 'home', 'book', 'notifaction'],
          icons: const [
            Icons.person_2_rounded,
            Icons.home,
            Icons.import_contacts_rounded,
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
              _motionTabBarController!.index = value;
            });
          },
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _motionTabBarController,
          children: [
            Profile(
              check: true,
            ),
            Home(),
            HomeBook(),
            Notifications()
          ],
        ));
  }
}
