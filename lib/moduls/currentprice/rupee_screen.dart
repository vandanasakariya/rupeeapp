import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rupeeapp/moduls/currentprice/rupee_controller.dart';
import 'package:sizer/sizer.dart';

import '../../theme/app_img.dart';
import '../../theme/app_string.dart';

class RuppeScreen extends StatelessWidget {
  RuppeScreen({Key? key}) : super(key: key);
  final RupeeController rupeeController = Get.put(RupeeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                //final data1 = rupeeController.rupeeModal.value.priceChange;

                var date = DateTime.fromMillisecondsSinceEpoch(
                    (data?[0].round() ?? 0) * 1000);
                //if (date.toString().contains("12:30:00")) {
                //Text("${(date.toString().contains("12:30:00"))}");
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Table(
                    children: [
                      const TableRow(
                        children: [
                          Text("Date"),
                          Text("Price"),
                        ],
                      ),
                      TableRow(
                        children: [
                          Text("${date}"),
                          Text("${data?[0]}"),
                        ],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(
                  //thickness: 2,
                  color: Colors.black,
                );
              },
            ),
          ),
        )
      ]),
    );
  }
}
