import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rupeeapp/moduls/currentprice/rupee_controller.dart';
import 'package:rupeeapp/theme/app_string.dart';
import 'package:sizer/sizer.dart';

import '../../theme/app_img.dart';

class CurrentPrice extends StatefulWidget {
  CurrentPrice({Key? key}) : super(key: key);

  @override
  _CurrentPriceState createState() => _CurrentPriceState();
}

class _CurrentPriceState extends State<CurrentPrice> {
  final RupeeController rupeeController = Get.put(RupeeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          //centerTitle: true,

          title: Row(
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppImg.rupeeImg,
                    height: 10.h,
                    width: 15.w,
                  ),
                  Text(AppString.appBarcurrentpriceInfo),
                ],
              ),
            ],
          ),
        ),
        body: Column(children: [
          Obx(
            () => Expanded(
              child: ListView.separated(
                itemCount: rupeeController.rupeeModal.value.prices?.length ?? 0,
                itemBuilder: (context, index) {
                  final data = rupeeController.rupeeModal.value.prices?[index];
                  final data1 = rupeeController.rupeeModal.value.priceChange;
                  var date = DateTime.fromMillisecondsSinceEpoch(
                      (data?[0].round() ?? 0) * 1000);
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("price :${data1}", style: TextStyle(fontSize: 20)),
                        Text("date:${date}"),
                        // Text(
                        //     "prices : ${DateFormat("h:mma").format(data?[0
                        //     ])}"),
                        // Text("prices : ${Utils.formatTimeOfDay(data?[0] ?? 0)}"),
                        Text("prices : ${data?[1]}"),
                        Text("prices : ${data?[2]}"),
                      ],
                    ),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider(
                    thickness: 2,
                    color: Colors.black,
                  );
                },
              ),
            ),
          )
        ]),
      ),
    );
  }
}
