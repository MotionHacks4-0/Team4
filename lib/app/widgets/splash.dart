import 'package:eco_trip/app/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';

import '../routes/app_pages.dart';

class SplashScreen extends StatelessWidget {
  final bool hasSeenOnboarding;
  const SplashScreen({super.key, required this.hasSeenOnboarding});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      if (hasSeenOnboarding) {
        Get.offAllNamed(Routes.LOGIN);
      } else {
        Hive.box('onboarding').put('seen', true);
        Get.offAllNamed(Routes.ONBOARDING);
      }
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: Get.width * 0.8,
              height: Get.width * 0.8,
              child: Image.asset("assets/images/logo.png"),
            ),
          ],
        ),
      ),
    );
  }
}
