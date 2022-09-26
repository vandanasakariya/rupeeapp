import 'dart:async';

import 'package:get/get.dart';
import 'package:rupeeapp/utils/navigation/navoigation.dart';
import 'package:rupeeapp/utils/navigation/routes.dart';

class SpleshController extends GetxController {
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    Timer(
      const Duration(seconds: 3),
      () => Navigation.pushNamed(Routes.welComePage),
    );
  }
}
