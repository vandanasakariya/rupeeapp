import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rupeeapp/splesh_screen_controller.dart';
import 'package:sizer/sizer.dart';

import 'utils/navigation/routes.dart';

class Rupee extends StatefulWidget {
  const Rupee({Key? key}) : super(key: key);

  @override
  State<Rupee> createState() => _RupeeState();
}

class _RupeeState extends State<Rupee> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        hoverColor: Colors.transparent,
        splashColor: Colors.transparent,
        //backgroundColor: Colors.blue.shade100,
        inputDecorationTheme: const InputDecorationTheme(),
        switchTheme: const SwitchThemeData(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blue.shade900,
          titleTextStyle: TextStyle(fontSize: 15.sp),
        ),
      ),
      initialRoute: Routes.spleshScreen,
      getPages: Routes.pages,
      initialBinding: AppBidding(),
      // home: const WelcomePage(),
    );
  }
}

void hideKeyboard(BuildContext context) {
  var currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    FocusManager.instance.primaryFocus!.unfocus();
  }
}

class AppBidding implements Bindings {
  @override
  void dependencies() {
    print("1-------vvv-----");
    Get.put(SpleshController());
  }
}
