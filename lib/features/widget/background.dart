import 'package:flutter/material.dart';

Widget Background(BuildContext context) {
  return Container(
    width: double.infinity,
    height: MediaQuery.of(context).size.height,
    foregroundDecoration: BoxDecoration(
        gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      // colors: [
      //   ColorManger.backgroundPage,
      //    ColorManger.frf,
      // ],
      // stops: [
      //    0.13,
      //   2.0,
      // ]
      colors: [
        Color(0xFFFEFEFE), // اللون الأول
        Color.fromRGBO(153, 153, 153, 0.8), // اللون الثاني مع الشفافية
      ],
      stops: [0.124, 1.0],
    )),
  );
}
