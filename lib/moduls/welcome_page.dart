import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:lottie/lottie.dart';
import 'package:rupeeapp/theme/app_img.dart';
import 'package:rupeeapp/theme/app_string.dart';
import 'package:rupeeapp/utils/navigation/navoigation.dart';
import 'package:rupeeapp/utils/navigation/routes.dart';
import 'package:rupeeapp/widget/customcontainer.dart';
import 'package:share_plus/share_plus.dart';
import 'package:sizer/sizer.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Row(
          //  crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImg.rupeeImg,
              height: 10.h,
              width: 15.w,
            ),
            Text(AppString.appBarRupeeNm),
          ],
        ),
      ),
      body: WillPopScope(
        onWillPop: () {
          exit(0);
        },
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 3.h, horizontal: 3.w),
          child: Column(
            children: [
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigation.pushNamed(Routes.inforMation);
                    },
                    child: CustomContainer(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 2.h),
                        child: Column(
                          children: [
                            Lottie.asset("asset/lottieimg/info.json",
                                width: 20.w),
                            Text(AppString.rupeeInfo,
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigation.pushNamed(Routes.rupeeScreen);
                    },
                    child: CustomContainer(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 2.h),
                        child: Column(
                          children: [
                            Lottie.asset("asset/lottieimg/price.json",
                                width: 35.w, height: 10.h),
                            Text(AppString.currentPrice,
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          content: Container(
                            height: 20.h,
                            width: 20.w,
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4.w),
                              child: RatingBar.builder(
                                initialRating: 2,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: false,
                                itemCount: 5,
                                // itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                                itemBuilder: (context, _) => Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 5.w,
                                ),
                                onRatingUpdate: (rating) {
                                  print(rating);
                                },
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    child: CustomContainer(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 2.h),
                        child: Column(
                          children: [
                            Lottie.asset("asset/lottieimg/rate.json",
                                width: 35.w, height: 10.h),
                            Text(AppString.rate,
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Share.share("App Link ");
                    },
                    child: CustomContainer(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.w, vertical: 2.h),
                        child: Column(
                          children: [
                            Lottie.asset("asset/lottieimg/share.json",
                                width: 35.w, height: 10.h),
                            Text(AppString.share,
                                style: TextStyle(
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}