import 'package:get/get.dart';

import 'package:rupeeapp/moduls/currentprice/rupee_screen.dart';
import 'package:rupeeapp/moduls/infomation/information_page.dart';
import 'package:rupeeapp/moduls/welcome_page.dart';
import 'package:rupeeapp/splesh_screen.dart';

mixin Routes {
  static const defaultTransition = Transition.rightToLeft;

  /// get started
  static const String spleshScreen = '/spleshScreen';
  static const String welComePage = '/welComePage';
  static const String inforMation = '/inforMation';
  static const String rupeeScreen = '/rupeeScreen';
  static List<GetPage<dynamic>> pages = [
    GetPage<dynamic>(
      name: spleshScreen,
      page: () => SplashScreen(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: welComePage,
      page: () => WelcomePage(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: inforMation,
      page: () => RupeeInformation(),
      transition: defaultTransition,
    ),
    GetPage<dynamic>(
      name: rupeeScreen,
      page: () => RuppeScreen(),
      transition: defaultTransition,
    ),
  ];
}
