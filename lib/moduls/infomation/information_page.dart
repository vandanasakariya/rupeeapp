import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rupeeapp/theme/app_img.dart';
import 'package:rupeeapp/theme/app_string.dart';
import 'package:rupeeapp/utils/size_utils/size_utils.dart';
import 'package:sizer/sizer.dart';

class RupeeInformation extends StatelessWidget {
  const RupeeInformation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          centerTitle: true,
          title: Row(
            children: [
              Image.asset(
                AppImg.rupeeImg,
                height: SizeUtils.verticalBlockSize * 10,
                width: SizeUtils.horizontalBlockSize * 12,
              ),
              const Text(
                AppString.appBarRupeeInformation,
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _headerContainer(),
              _cryptoContainer(),
            ],
          ),
        ),
      ),
    );
  }

  _commonRow({
    String img = "",
    String header = "",
    String text = "",
    String text1 = "",
    String subtext = "",
    final double? height,
    final double? width,
  }) {
    return Row(
      children: [
        CircleAvatar(
          child: Image.asset(
            img,
            height: height,
            width: width,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 4.h),
          child: Column(
            children: [
              Text(header,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.w600,
                  )),
              SizedBox(
                width: 70.w,
                child: AutoSizeText(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    // overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              SizedBox(
                width: 70.w,
                child: AutoSizeText(
                  subtext,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.sp,
                    // overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
              Text(
                text1,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12.sp,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  _headerContainer() {
    return Container(
      height: SizeUtils.horizontalBlockSize * 65,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.blue,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("asset/img/background.gif"),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: SizeUtils.verticalBlockSize * 15,
          ),
          Text(AppString.rupee,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold)),
          Text(AppString.solRem,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600)),
          Text(AppString.crpySouthAsia,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.sp,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600)),
        ],
      ),
    );
  }

  _cryptoContainer() {
    return Container(
      color: Colors.blue[900],
      height: SizeUtils.verticalBlockSize * 800,
      //width: SizeUtils.horizontalBlockSize * 200,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeUtils.verticalBlockSize * 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeUtils.verticalBlockSize * 3),
              child: Text(AppString.whycripto,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.sp,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w600)),
            ),
            _commonRow(
              img: AppImg.brand,
              /* height: SizeUtils.verticalBlockSize * 30,
              width: SizeUtils.horizontalBlockSize * 60,*/
              text: AppString.rupeeAsBrand,
              subtext: AppString.acrossAsia,
              header: AppString.brandRecognition,
            ),
            _commonRow(
              img: AppImg.peopleImg,
              /*height: 15.h,
              width: 20.w,*/
              text: AppString.rupeeHasRich,
              subtext: AppString.symbolOfTrand,
              header: AppString.richHistory,
            ),
            _commonRow(
              img: AppImg.dimondImg,
              /* height: 15.h,
              width: 20.w,*/
              text: AppString.rupeeTeam,
              subtext: AppString.commerceSolutions,
              header: AppString.eCommerce,
            ),
            const Divider(
              color: Colors.black,
              thickness: 2,
            ),
            _commonRow(
              img: AppImg.brand,
              /* height: 15.h,
              width: 20.w,*/
              text: AppString.rupeeBlockChain,
              subtext: AppString.platForm,
              header: AppString.decentralizedPlatform,
            ),
            _commonRow(
              img: AppImg.peopleImg,
              /*height: 15.h,
              width: 20.w,*/
              text: AppString.rupeeWasBuilt,
              subtext: AppString.peopleFor,
              header: AppString.community,
              text1: AppString.greatPride,
            ),
            _commonRow(
              img: AppImg.dimondImg,
              /*  height: 15.h,
              width: 20.w,*/
              text: AppString.rupeeRun,
              subtext: AppString.theNext,
              header: AppString.rewardsMechanism,
              text1: AppString.decentRalisation,
            ),
            Divider(
              color: Colors.black,
              thickness: 2,
              height: SizeUtils.horizontalBlockSize * 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeUtils.horizontalBlockSize * 5),
              child: Text(AppString.theRupeeMission,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: SizeUtils.horizontalBlockSize * 2),
            Image.asset(
              AppImg.rupeeMissionImg,
              height: SizeUtils.verticalBlockSize * 50,
              //width: 200.w,
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(AppString.rupeeCriptoCurrency,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp,
                  )),
            ),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 3,
            ),
            _commonRows(
              text1: AppString.int1,
              text2: AppString.string1,
            ),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 5,
            ),
            _commonRows(
              text1: AppString.int2,
              text2: AppString.string2,
            ),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 5,
            ),
            _commonRows(
              text1: AppString.int3,
              text2: AppString.string3,
            ),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 5,
            ),
            _commonRows(
              text1: AppString.int3,
              text2: AppString.string3,
            ),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 5,
            ),
            _commonRows(
              text1: AppString.int4,
              text2: AppString.string4,
            ),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 5,
            ),
            _commonRows(
              text1: AppString.int5,
              text2: AppString.string5,
            ),
            Divider(
              thickness: 2,
              color: Colors.black,
              height: SizeUtils.verticalBlockSize * 10,
            ),
            Text(AppString.technicalInfo,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.sp,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 6,
            ),
            _commonRowsn(text: AppString.algorithm, text2: AppString.pos),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 5,
            ),
            _commonRowsn(
                text: AppString.confirMations, text2: AppString.blocks),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 5,
            ),
            _commonRowsn(
                text: AppString.circulatingSupply, text2: AppString.million),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 5,
            ),
            _commonRowsn(text: AppString.blockReward, text2: AppString.rUP50),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 5,
            ),
            _commonRowsn(text: AppString.rpcPort, text2: AppString.int8517),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 5,
            ),
            _commonRowsn(text: AppString.p2PPort, text2: AppString.int8518),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 5,
            ),
            _commonRowsn(
                text: AppString.maturity, text2: AppString.stakingHours),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 5,
            ),
            _commonRowsn(text: AppString.blockTarget, text2: AppString.minutes),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 5,
            ),
            _commonRowsn(text: AppString.mnPOSReward, text2: AppString.mnPos),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 5,
            ),
            Divider(thickness: 2, color: Colors.black),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 5,
            ),
            Text(
              AppString.roadMap,
              style: TextStyle(
                  color: Colors.blue.shade50,
                  fontSize: 20.sp,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: SizeUtils.verticalBlockSize * 5,
            ),
            Image.asset(
              AppImg.rodMap1,
              height: SizeUtils.horizontalBlockSize * 600,
              // width: SizeUtils.horizontalBlockSize * 300,
            ),
          ],
        ),
      ),
    );
  }

  _commonRows({
    String text1 = "",
    String text2 = "",
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          text1,
          style: TextStyle(
              color: Colors.blue.shade50,
              fontSize: 20.sp,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          width: SizeUtils.verticalBlockSize * 35,
          child: AutoSizeText(
            text2,
            style: TextStyle(
                color: Colors.blue.shade200,
                fontSize: 15.sp,
                fontWeight: FontWeight.w400),
          ),
        ),
      ],
    );
  }

  _commonRowsn({
    String text = "",
    String text2 = "",
  }) {
    return Row(
      //crossAxisAlignment: CrossAxisAlignment.center,
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(minRadius: 1.w, backgroundColor: Colors.blue.shade100),
        SizedBox(
          width: SizeUtils.verticalBlockSize * 15,
        ),
        Column(
          children: [
            Text(
              text,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              text2,
              style: TextStyle(
                  color: Colors.purple.shade100,
                  fontSize: 15.sp,
                  fontWeight: FontWeight.w300),
            ),
          ],
        ),
      ],
    );
  }
}
