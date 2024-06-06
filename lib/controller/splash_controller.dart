import 'dart:async';

import 'package:e_app/views/pages/dashboard/dashboard.dart';
import 'package:flutter/animation.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../views/pages/introduction/intro.dart';
import '../views/widgets/darkmode.dart';


class SplashScreenViewModel extends  GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;
  final splashDelay = 5;
  @override
  void onInit() {
    animationInitilization();
    getThemeStatus();
    super.onInit();
  }

  animationInitilization() {

    Timer(Duration(seconds: 4),
        checkFirstSeen);
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    animation =
        CurvedAnimation(parent: animationController, curve: Curves.easeOut)
            .obs
            .value;
    animation.addListener(() => update());
    animationController.forward();
  }
  Future checkFirstSeen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool _introSeen = (prefs.getBool('intro_seen') ?? false);
    if ( _introSeen   ) {
      Get.to(Dashboard());
    } else {
      await prefs.setBool('intro_seen', true);
      Get.to(OnboardScreenLive());
    }
  }
}