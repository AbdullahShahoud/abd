import 'package:flutter/material.dart';
import 'package:learn_programtion/core/helper/extention.dart';

import '../../../../core/routing/router.dart';
import '../../../../core/theming/font_style.dart';

class YourAccount extends StatelessWidget {
  const YourAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      InkWell(
        child: Text(
          "سجل دخول",
          style: FontStyleAndText.smallestTouch,
        ),
        onTap: () {
          context.pushNamed(Routers.login);
        },
      ),
      Text(
        'لديك حساب بالفعل؟  ',
        style: FontStyleAndText.fontsmall,
      ),
    ]);
  }
}
