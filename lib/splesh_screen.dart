import 'dart:async';

import 'package:flutter/material.dart';
import 'package:rupeeapp/theme/app_img.dart';
import 'package:rupeeapp/utils/navigation/navoigation.dart';
import 'package:rupeeapp/utils/navigation/routes.dart';
import 'package:rupeeapp/utils/size_utils/size_utils.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeUtils().init(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImg.rupeeImg,
              height: SizeUtils.verticalBlockSize * 45,
            ),
          ],
        ),
      ),
    );
  }
}
//
