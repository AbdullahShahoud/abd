import 'package:flutter/material.dart';
import 'package:learn_programtion/core/helper/extention.dart';

import '../../../../core/routing/router.dart';
import '../../../../core/theming/font_style.dart';

class NoAccont extends StatelessWidget {
  const NoAccont({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      InkWell(
        child: Text(
          "إنشاء حساب",
          style: FontStyleAndText.smallestTouch,
        ),
        onTap: () {
          context.pushNamed(Routers.singin);
        },
      ),
      Text(
        ' لا تملك حساب؟',
        style: FontStyleAndText.fontsmall,
      ),
    ]);
  }
}
