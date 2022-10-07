import 'dart:developer';

// import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:rupeeapp/utils/size_utils/size_utils.dart';

class AdController extends GetxController {
  ///InterstitialAd
  InterstitialAd? _interstitialAd;
  int num_of_attempt_load = 0;
  BannerAd? ad;

  ///RewardedAd
  RewardedAd? rewardedAd;
  bool isloading = false;

  ///RewardedAd InterstitialAd ads
  // RewardedInterstitialAd? _rewardedInterstitialAd;
  // int _numRewardedInterstitialLoadAttempts = 0;
  int maxFailedLoadAttempts = 3;

  // String InterstitialAdId = FirebaseRemoteConfigUtils.interAdId;
  // String RewardedAdId = FirebaseRemoteConfigUtils.rewardAdId;

  ///InterstitialAd
  Future<void> createInterstitialAd() async {
    // final firebaseRef = FirebaseDatabase(
    //         databaseURL: "https://e-shrm-default-rtdb.firebaseio.com/")
    //     .reference()
    //     .child("interstitial_id");
    // DataSnapshot inter = await firebaseRef.get();

    // log("InterstitialAd========->${inter.value} \n ");
    try {
      InterstitialAd.load(
        // adUnitId: inter.value.toString(),
        adUnitId: "ca-app-pub-3481984670024764/3420908366",
        request: AdRequest(),
        adLoadCallback:
            InterstitialAdLoadCallback(onAdLoaded: (InterstitialAd ad) {
          print("----------333---------");
          _interstitialAd = ad;
          num_of_attempt_load = 0;
        }, onAdFailedToLoad: (LoadAdError error) {
          num_of_attempt_load + 1;
          _interstitialAd = null;
          if (num_of_attempt_load <= 2) {
            createInterstitialAd();
          }
        }),
      );
      _interstitialAd?.show();
    } catch (e) {
      print(e);
    }
  }

  ///RewardedAd
  Future<void> createRewardedAd() async {
    // final firebaseRef = FirebaseDatabase(
    //         databaseURL: "https://e-shrm-default-rtdb.firebaseio.com/")
    //     .reference()
    //     .child("reward_id");
    // DataSnapshot rewardeId = await firebaseRef.get();
    // log("RewardedAd------>${rewardeId.value} \n ");
    try {
      RewardedAd.load(
        // adUnitId: rewardeId.value.toString(),
        adUnitId: "ca-app-pub-3940256099942544/5224354917",
        request: AdRequest(),
        rewardedAdLoadCallback: RewardedAdLoadCallback(
          onAdLoaded: (rad) {
            print("rewaerdad ad");
            rewardedAd = rad;

            isloading = true;
          },
          onAdFailedToLoad: (error) {
            print("rewaerdad error");
          },
        ),
      );
      rewardedAd?.setImmersiveMode(true);
      rewardedAd?.show(onUserEarnedReward: (ad, reward) {
        print("user watched complete ");
      });
    } catch (e) {
      print(e);
    }
  }

  void adsFunction() async {
    ad = BannerAd(
      size: const AdSize(height: 500, width: 360),
      adUnitId: "ca-app-pub-3940256099942544/6300978111",
      listener: BannerAdListener(
        onAdLoaded: (Ad ad) {
          // BannerAds.isLoaded = true;
        },
        onAdFailedToLoad: (Ad ad, LoadAdError error) {
          ad.dispose();
        },
        onAdOpened: (Ad ad) => print('$BannerAd onAdOpened.'),
        onAdClosed: (Ad ad) => print('$BannerAd onAdClosed.'),
      ),
      request: const AdRequest(),
    );
    ad?.load();
  }

  @override
  void onInit() {
    adsFunction();
    createInterstitialAd();
    createRewardedAd();
    super.onInit();
  }
// ///RewardedAd InterstitialAd ads
// void createRewardedInterstitialAd() {
//   try {
//     RewardedInterstitialAd.load(
//         adUnitId: Platform.isAndroid
//             ? 'ca-app-pub-3940256099942544/5354046379'
//             : 'ca-app-pub-3940256099942544/6978759866',
//         request: const AdRequest(),
//         rewardedInterstitialAdLoadCallback:
//             RewardedInterstitialAdLoadCallback(
//           onAdLoaded: (RewardedInterstitialAd ad) {
//             print('$ad loaded.');
//             _rewardedInterstitialAd = ad;
//             _numRewardedInterstitialLoadAttempts = 0;
//           },
//           onAdFailedToLoad: (LoadAdError error) {
//             print('RewardedInterstitialAd failed to load: $error');
//             _rewardedInterstitialAd = null;
//             _numRewardedInterstitialLoadAttempts += 1;
//             if (_numRewardedInterstitialLoadAttempts <
//                 maxFailedLoadAttempts) {
//               createRewardedInterstitialAd();
//             }
//           },
//         ));
//     _rewardedInterstitialAd!.setImmersiveMode(true);
//     _rewardedInterstitialAd!.show(
//         onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {
//       print('$ad with reward $RewardItem(${reward.amount}, ${reward.type})');
//     });
//   } catch (e) {
//     print(e);
//   }
// }
//
// void showRewardedInterstitialAd() {
//   if (_rewardedInterstitialAd == null) {
//     print('Warning: attempt to show rewarded interstitial before loaded.');
//     return;
//   }
//   _rewardedInterstitialAd!.fullScreenContentCallback =
//       FullScreenContentCallback(
//     onAdShowedFullScreenContent: (RewardedInterstitialAd ad) =>
//         print('$ad onAdShowedFullScreenContent.'),
//     onAdDismissedFullScreenContent: (RewardedInterstitialAd ad) {
//       print('$ad onAdDismissedFullScreenContent.');
//       ad.dispose();
//       createRewardedInterstitialAd();
//     },
//     onAdFailedToShowFullScreenContent:
//         (RewardedInterstitialAd ad, AdError error) {
//       print('$ad onAdFailedToShowFullScreenContent: $error');
//       ad.dispose();
//       createRewardedInterstitialAd();
//     },
//   );
//   _rewardedInterstitialAd!.setImmersiveMode(true);
//   _rewardedInterstitialAd!.show(
//       onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {
//     print('$ad with reward $RewardItem(${reward.amount}, ${reward.type})');
//   });
//   _rewardedInterstitialAd = null;
// }
}
