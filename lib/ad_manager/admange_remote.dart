// import 'package:firebase_remote_config/firebase_remote_config.dart';
//
// class FirebaseRemoteConfigUtils {
//   static final FirebaseRemoteConfigUtils _configUtils =
//       FirebaseRemoteConfigUtils._internal();
//
//   factory FirebaseRemoteConfigUtils() {
//     return _configUtils;
//   }
//
//   FirebaseRemoteConfigUtils._internal();
//
//   static const String bannerId = 'banner_id';
//   static const String interId = 'inter_id';
//   static const String rewardId = 'reward_id';
//   static const String openAdId = 'opnead_id';
//
//   // static const String openAppAdsShowOrNot = 'ads_show_flag';
//   static final FirebaseRemoteConfig _remoteConfig =
//       FirebaseRemoteConfig.instance;
//
//   static String get bannerAdId => _remoteConfig.getString(bannerId);
//   static String get interAdId => _remoteConfig.getString(interId);
//   static String get rewardAdId => _remoteConfig.getString(rewardId);
//   static String get appOpenId => _remoteConfig.getString(openAdId);
//
//   // static bool get isOpenAdsShowOrNot =>
//   //     _remoteConfig.getBool(openAppAdsShowOrNot);
//   Future<void> initMethod() async {
//     try {
//       final remoteConfig = FirebaseRemoteConfig.instance;
//       await remoteConfig.setConfigSettings(
//         RemoteConfigSettings(
//             fetchTimeout: const Duration(seconds: 1),
//             minimumFetchInterval: const Duration(seconds: 0)),
//       );
//       await _remoteConfig.fetchAndActivate();
//     } catch (e) {
//       print(e);
//     }
//   }
// }
//
// // class FirebaseRealtimeUtils {
// //   static final FirebaseRealtimeUtils _realtimeUtils =
// //   FirebaseRealtimeUtils._internal();
// //   factory FirebaseRealtimeUtils() {
// //     return _realtimeUtils;
// //   }
// //   FirebaseRealtimeUtils._internal();
// //   static const String openAppAdsId = 'bannerId';
// // }
